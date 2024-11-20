import os
import subprocess
import streamlit as st
from streamlit_lottie import st_lottie
import requests
from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util.retry import Retry

def load_lottieurl(url):
    session = requests.Session()
    retries = Retry(total=5, backoff_factor=0.5, status_forcelist=[500, 502, 503, 504])
    session.mount('https://', HTTPAdapter(max_retries=retries))

    try:
        r = session.get(url, timeout=10)  # Adjust the timeout as needed
        r.raise_for_status()
        return r.json()
    except (requests.RequestException, ValueError) as e:
        print(f"Error fetching Lottie animation: {e}")
        return None

# Set the SWI-Prolog environment
os.environ["SWI_HOME_DIR"] = "C:\\Program Files\\swipl"

def prolog_query(query):
    # Ensure to use the absolute path to movielovers.pl
    prolog_file = os.path.abspath("movielovers.pl")
    prolog_command = f"{query}"
    command = ['swipl', '-s', prolog_file, '-g', prolog_command, '-t', 'halt']

    p = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    output, error = p.communicate()

    try:
        output_decoded = output.decode('utf-8').strip()
    except UnicodeDecodeError:
        output_decoded = output.decode('latin-1').strip()

    try:
        error_decoded = error.decode('utf-8').strip()
    except UnicodeDecodeError:
        error_decoded = error.decode('latin-1').strip()

    if error_decoded:
        st.error(f"Prolog error: {error_decoded}")
    return output_decoded

def get_options(query):
    results = prolog_query(query)
    return results.split("\n") if results else []

def get_recommendations(category, language, age, season):
    category = f'"{category}"' if category != "No preference" else "_"
    language = f'"{language}"' if language != "No preference" else "_"
    age = f'"{age}"' if age != "No preference" else "_"
    season = f'"{season}"' if season != "No preference" else "_"
    query = f"findall(Title, movies(Title, {category}, {language}, {age}, {season}), Titles), maplist(writeln, Titles)"
    results = prolog_query(query)
    return results.split("\n")

def main():
    import streamlit as st

    st.markdown(
    """
    <style>
    body {
        background-image: url('bgFilm.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .stApp {
        background-color: rgba(255, 255, 255, 0.1); /* Background color of the app */
        border-radius: 10px; /* Rounded corners */
        padding: 20px; /* Inner space */
    }
    </style>
    """,
    unsafe_allow_html=True
)




# Votre application Streamlit ici


# Votre application Streamlit ici


    st.title("Movie Recommendation System")

    categories = get_options("findall(X, (category(L), member(X, L)), Categories), maplist(writeln, Categories)")
    languages = get_options("findall(X, (language(L), member(X, L)), Languages), maplist(writeln, Languages)")
    ages = get_options("findall(X, (age(L), member(X, L)), Ages), maplist(writeln, Ages)")
    seasons = get_options("findall(X, (season(L), member(X, L)), Seasons), maplist(writeln, Seasons)")

    st.header("Select your preferences")

    col1, col2 = st.columns([1, 2])

    with col1:
        giphy_html = """
        <iframe src="https://giphy.com/embed/2eKfq00HWfb91flICf" width="100%" height="405" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
        """
        st.components.v1.html(giphy_html, height=405)

    with col2:
        category = st.selectbox("Category", ["No preference"] + categories)
        language = st.selectbox("Language", ["No preference"] + languages)
        age = st.selectbox("Age Restriction", ["No preference"] + ages)
        season = st.selectbox("Season", ["No preference"] + seasons)

        if st.button("Recommend"):
            with st.spinner('Finding recommendations...'):
                # Simulating delay for recommendation
                import time
                time.sleep(2)  # Add a delay to simulate processing
                recommendations = get_recommendations(category, language, age, season)
                if recommendations:
                    st.write("Recommendations:")
                    for rec in recommendations:
                        st.write(rec)
                else:
                    st.write("No recommendations found.")

if __name__ == "__main__":
    main()

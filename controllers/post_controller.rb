class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

configure:development do
  register Sinatra::Reloader
end

$posts = [
  {
    id: 0,
    title: "Harry Styles - Sign of the Times",
    body: "Harry Styles' self-titled debut album featuring (Sign of the Times) is available now: http://hstyles.co.uk/music",
    src: "https://www.youtube.com/embed/qN4ooNx77u0"
  },
  {
    id: 1,
    title: "One Direction - Night Changes",
    body: "One Direction's second single Night Changes, from the NEW album FOUR, is out now!  iTunes: smarturl.it/1DFouriTdlx    Amazon: smarturl.it/1DFourAmzDigDlx   Music video directed by Ben Winston.",
    src: "https://www.youtube.com/embed/syFZfO_wfMQ"
  },
  {
    id: 2,
    title: "One Direction - Little Things",
    body: "One Direction's official music video for Little Things.   As featured on Take Me Home, listen on Spotify http://smarturl.it/TakeMeHomeSPx   Click to buy the album via iTunes: http://smarturl.it/TakeMeHomeITU  Google Play: http://smarturl.it/TakeMeHomeGP",
    src: "https://www.youtube.com/embed/xGPeNN9S0Fg"
  },
  {
    id: 3,
    title: "One Direction - Perfect",
    body: "One Direction's official music video for Perfect.   As featured on Made in the A.M., listen on Spotify http://smarturl.it/MADamSP   Click to buy the album via iTunes: http://smarturl.it/MADEamITU  Google Play: http://smarturl.it/MADamGP  Amazon:  http://smarturl.it/MADamAMZ ",
    src: "https://www.youtube.com/embed/Ho32Oh6b4jc"
  },
  {
    id: 4,
    title: "One Direction - You & I",
    body: "Pre-order the You & I single bundle including a remix from Liam Payne now! iTunes: http://smarturl.it/1DYouAndIPreOrder?...  Taken from the album Midnight Memories out now!  Amazon: http://smarturl.it/MidnightMemoriesAmz",
    src: "https://www.youtube.com/embed/_kqQDCxRCzM"
  }
]

  get "/" do
    @title_for_the_page = "Youtube"
    @posts = $posts
    erb :"posts/index"
  end

  get "/:id_from_url" do
    id = params[:id_from_url].to_i
    @post = $posts[id]
    erb :"posts/show"
  end

end

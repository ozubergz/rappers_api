# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Comment.destroy_all
User.destroy_all

Artist.create(
    name: "6ix9ine",
    profile_pic: "https://www.unilad.co.uk/wp-content/uploads/2018/07/tekashi69-wt.jpg", 
    bio: "Daniel Hernandez (born May 8, 1996), known professionally as 6ix9ine (pronounced 'six-nine') or Tekashi69 (also stylized as Tekashi 6ix9ine), is an American rapper, songwriter, and convicted felon. His music has been marked by an aggressive style of rapping, while his controversial public persona is characterized by his distinctive rainbow-colored hair, extensive tattoos, public feuds with fellow celebrities, and legal issues."
);

Artist.create(
    name: "Bobby Shmurda",
    profile_pic: "https://media.gq.com/photos/5744d96fab47ce8760286361/master/pass/bobby-shmurda-football-gq-0616vert.jpg",
    bio: "Ackquille Jean Pollard (born August 4, 1994), known professionally as Bobby Shmurda, is an American rapper. He signed a deal with Epic Records after his track 'Hot Nigga' peaked at number 6 on the US Billboard Hot 100 in 2014. On December 18, 2014, New York City Police arrested Shmurda, and he was charged with conspiracy to murder, weapons possession, and reckless endangerment. In 2016, he pleaded guilty and was sentenced to seven years in prison, which was reduced to five years after receiving credit for the two years he already served awaiting trial."
)

Artist.create(
    name: "Chief Keef",
    bio: "Keith Farrelle Cozart (born August 15, 1995), better known by his stage name Chief Keef, is an American rapper, songwriter and record producer. Keef's music first became popular during his teen years in the early 2010s among high school students from Chicago's South Side. In 2012, his popular street single 'I Don't Like' was remixed by rapper Kanye West and reached the Billboard Rap Top 20 raising Keef's profile further. A bidding war between major labels resulted in Keef signing with Interscope. His debut album Finally Rich was released in December 2012, and featured the singles 'I Don't Like' and 'Love Sosa', which would popularize the Chicago rap subgenre drill",
    profile_pic: "https://cdn.vox-cdn.com/thumbor/xokTDhClflpaXJBv27_gdwH2ITQ=/0x0:1072x623/1200x800/filters:focal(315x140:485x310)/cdn.vox-cdn.com/uploads/chorus_image/image/65073234/zcx2c1jnugynlhtsrjwt.0.png"
)

Artist.create(
    name: "ASAP Rocky",
    bio: "Rakim Athelaston Mayers (born October 3, 1988), known professionally as ASAP Rocky (stylized as A$AP Rocky; /ˈeɪsæp/, AY-sap), is an American rapper, songwriter, record producer, model, actor, and music video director. He is a member of the hip hop collective A$AP Mob, from which he adopted his moniker.",
    profile_pic: "https://en.wikipedia.org/wiki/ASAP_Rocky#/media/File:A$AP_Rocky_UIT_2013_(cropped)_(cropped).jpg"
)

Artist.create(
    name: "Kodak Black",
    profile_pic: "https://en.wikipedia.org/wiki/Kodak_Black#/media/File:Kodak_Black_Press_Photo_by_David_Cabrera.jpg",
    bio: "Bill K. Kapri (born Dieuson Octave; June 11, 1997), better known by his stage name Kodak Black, is an American rapper, singer and songwriter. He is noted for his singles 'Zeze', 'Roll in Peace', 'Tunnel Vision', and 'No Flockin', as well as his numerous legal issues."
)

10.times do
    Comment.create(
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit 
            anim id est laborum.",
        artist: Artist.all.sample(),
        user: User.create(username: Faker::Internet.username)
    )
end




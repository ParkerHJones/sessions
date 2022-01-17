sessions = Session.create([
    {
        name: "Bhavi - BZRP Music Sessions #1",
        image_url: "https://www.cmtv.com.ar/tapas-cd/0163600001585614480.jpg"
    }
])

reviews = Review.create([
{
    title: 'Bien',
    description: 'Me sirve pero no es en mi top 5', 
    score: 4, 
    session: sessions.first
},
{
    title: 'Mal',
    description: 'No esta bien',
    score: 1,
    session: sessions.first
}
])

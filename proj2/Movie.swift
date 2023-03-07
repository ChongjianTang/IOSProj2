//
//  Movie.swift
//  proj2
//
//  Created by Chongjian Tang on 3/6/23.
//

import Foundation

struct Movie {
    let backdrop_path: URL
    let overview: String
    let popularity: Float
    let poster_path: URL
    let title: String
    let vote_average: Float
    let vote_count: Int
}


extension Movie {
    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              popularity: 3501.282,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
              title: "Black Panther: Wakanda Forever",
              vote_average: 7.4,
              vote_count: 3823),
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              popularity: 3278.515,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
              title: "Puss in Boots: The Last Wish",
              vote_average: 8.4,
              vote_count: 4277),
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
              overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
              popularity: 2618.646,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
              title: "Plane",
              vote_average: 6.9,
              vote_count: 770),
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!,
              overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
              popularity: 2015.068,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
              title: "Little Dixie",
              vote_average: 6.4,
              vote_count: 46),
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg")!,
              overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
              popularity: 1896.806,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!,
              title: "Huesera: The Bone Woman",
              vote_average: 6.7,
              vote_count: 65),
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500/dlrWhn0G3AtxYUx2D9P2bmzcsvF.jpg")!,
              overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              popularity: 1731.622,
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
              title: "M3GAN",
              vote_average: 7.5,
              vote_count: 1891),
    ]
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/26YLjaC1udGEmSvlM1P5eBGWO5h.jpg",
    //                  "genre_ids": [
    //                    18,
    //                    28
    //                  ],
    //                  "id": 677179,
    //                  "original_language": "en",
    //                  "original_title": "Creed III",
    //                  "overview": "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.",
    //                  "popularity": 1672.364,
    //                  "poster_path": "/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg",
    //                  "release_date": "2023-03-01",
    //                  "title": "Creed III",
    //                  "video": false,
    //                  "vote_average": 7.2,
    //                  "vote_count": 144
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg",
    //                  "genre_ids": [
    //                    28,
    //                    10749,
    //                    35
    //                  ],
    //                  "id": 758009,
    //                  "original_language": "en",
    //                  "original_title": "Shotgun Wedding",
    //                  "overview": "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
    //                  "popularity": 1415.663,
    //                  "poster_path": "/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg",
    //                  "release_date": "2022-12-28",
    //                  "title": "Shotgun Wedding",
    //                  "video": false,
    //                  "vote_average": 6.4,
    //                  "vote_count": 583
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg",
    //                  "genre_ids": [
    //                    12,
    //                    878,
    //                    35
    //                  ],
    //                  "id": 640146,
    //                  "original_language": "en",
    //                  "original_title": "Ant-Man and the Wasp: Quantumania",
    //                  "overview": "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
    //                  "popularity": 1254.066,
    //                  "poster_path": "/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg",
    //                  "release_date": "2023-02-15",
    //                  "title": "Ant-Man and the Wasp: Quantumania",
    //                  "video": false,
    //                  "vote_average": 6.5,
    //                  "vote_count": 875
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/v2LilmCylr3bL9TCZSj6syjowZh.jpg",
    //                  "genre_ids": [
    //                    35,
    //                    18
    //                  ],
    //                  "id": 937278,
    //                  "original_language": "en",
    //                  "original_title": "A Man Called Otto",
    //                  "overview": "When a lively young family moves in next door, grumpy widower Otto Anderson meets his match in a quick-witted, pregnant woman named Marisol, leading to an unlikely friendship that turns his world upside down.",
    //                  "popularity": 1103.844,
    //                  "poster_path": "/130H1gap9lFfiTF9iDrqNIkFvC9.jpg",
    //                  "release_date": "2022-12-28",
    //                  "title": "A Man Called Otto",
    //                  "video": false,
    //                  "vote_average": 7.9,
    //                  "vote_count": 470
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/fTLMsF3IVLMcpNqIqJRweGvVwtX.jpg",
    //                  "genre_ids": [
    //                    28,
    //                    80,
    //                    53
    //                  ],
    //                  "id": 1035806,
    //                  "original_language": "en",
    //                  "original_title": "Detective Knight: Independence",
    //                  "overview": "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
    //                  "popularity": 996.252,
    //                  "poster_path": "/jrPKVQGjc3YZXm07OYMriIB47HM.jpg",
    //                  "release_date": "2023-01-20",
    //                  "title": "Detective Knight: Independence",
    //                  "video": false,
    //                  "vote_average": 6,
    //                  "vote_count": 76
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/pxJbfnMIQQxCrdeLD0zQnWr6ouL.jpg",
    //                  "genre_ids": [
    //                    28,
    //                    35,
    //                    53
    //                  ],
    //                  "id": 1077280,
    //                  "original_language": "en",
    //                  "original_title": "Die Hart",
    //                  "overview": "Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry's most coveted action stars.",
    //                  "popularity": 990.702,
    //                  "poster_path": "/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg",
    //                  "release_date": "2023-02-22",
    //                  "title": "Die Hart",
    //                  "video": false,
    //                  "vote_average": 6.6,
    //                  "vote_count": 93
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/r7Dfg9aRZ78gJsmDlCirIIlNH3d.jpg",
    //                  "genre_ids": [
    //                    18
    //                  ],
    //                  "id": 785084,
    //                  "original_language": "en",
    //                  "original_title": "The Whale",
    //                  "overview": "A reclusive English teacher suffering from severe obesity attempts to reconnect with his estranged teenage daughter for one last chance at redemption.",
    //                  "popularity": 951.324,
    //                  "poster_path": "/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg",
    //                  "release_date": "2022-12-09",
    //                  "title": "The Whale",
    //                  "video": false,
    //                  "vote_average": 8,
    //                  "vote_count": 775
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/a4I481szRmycyreQTLrRe4f4YJe.jpg",
    //                  "genre_ids": [
    //                    80,
    //                    53,
    //                    18
    //                  ],
    //                  "id": 842544,
    //                  "original_language": "en",
    //                  "original_title": "Transfusion",
    //                  "overview": "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.",
    //                  "popularity": 926.142,
    //                  "poster_path": "/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg",
    //                  "release_date": "2023-01-05",
    //                  "title": "Transfusion",
    //                  "video": false,
    //                  "vote_average": 6.6,
    //                  "vote_count": 126
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/jhi3K0rN46SSu9wEu6zYVCOeVtH.jpg",
    //                  "genre_ids": [
    //                    16,
    //                    28,
    //                    878
    //                  ],
    //                  "id": 1003580,
    //                  "original_language": "en",
    //                  "original_title": "Legion of Super-Heroes",
    //                  "overview": "Kara, devastated by the loss of Krypton, struggles to adjust to her new life on Earth. Her cousin, Superman, mentors her and suggests she leave their space-time to attend the Legion Academy in the 31st century, where she makes new friends and a new enemy: Brainiac 5. Meanwhile, she must contend with a mysterious group called the Dark Circle as it searches for a powerful weapon held in the Academy’s vault.",
    //                  "popularity": 833.328,
    //                  "poster_path": "/8M6bA5t2q5u1nWDTEIXuGDwvboW.jpg",
    //                  "release_date": "2023-02-07",
    //                  "title": "Legion of Super-Heroes",
    //                  "video": false,
    //                  "vote_average": 6.7,
    //                  "vote_count": 56
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg",
    //                  "genre_ids": [
    //                    10752,
    //                    36,
    //                    18
    //                  ],
    //                  "id": 653851,
    //                  "original_language": "en",
    //                  "original_title": "Devotion",
    //                  "overview": "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.",
    //                  "popularity": 796.758,
    //                  "poster_path": "/lwybGlEEJtXZM3ynY19PNwNlPn9.jpg",
    //                  "release_date": "2022-11-23",
    //                  "title": "Devotion",
    //                  "video": false,
    //                  "vote_average": 7.4,
    //                  "vote_count": 352
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/isGINC82PZmMblEJP2rBAvSlX37.jpg",
    //                  "genre_ids": [
    //                    16,
    //                    10751,
    //                    12,
    //                    35
    //                  ],
    //                  "id": 599019,
    //                  "original_language": "ru",
    //                  "original_title": "Большое путешествие. Специальная доставка",
    //                  "overview": "It has been a year since Mic Mic and Oscar returned from their incredible adventure. And now, after a diabolical plan by Vulture to sabotage the delivery of the Grizzly cub to his opponent in the American presidential elections, Mic Mic, Oscar, Panda teenager and Stork set off on another great adventure as they ride a zeppelin to return little Grizzly to its rightful parents and save the American elections and the whole continent from an erupting volcano.",
    //                  "popularity": 640.301,
    //                  "poster_path": "/dabXVfrAFfhDte8XVemom3mTJog.jpg",
    //                  "release_date": "2022-10-07",
    //                  "title": "Big Trip 2: Special Delivery",
    //                  "video": false,
    //                  "vote_average": 6.6,
    //                  "vote_count": 30
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/jDkmlTz9xBmhsIIyORb68VqRlL2.jpg",
    //                  "genre_ids": [
    //                    27
    //                  ],
    //                  "id": 955991,
    //                  "original_language": "en",
    //                  "original_title": "The Offering",
    //                  "overview": "In the wake of a young Jewish girl’s disappearance, the son of a Hasidic funeral director returns home with his pregnant wife in hopes of reconciling with his father. Little do they know that directly beneath them in the family morgue, an ancient evil with sinister plans for the unborn child lurks inside a mysterious corpse.",
    //                  "popularity": 635.501,
    //                  "poster_path": "/tbaTFgGIaTL1Uhd0SMob6Dhi5cK.jpg",
    //                  "release_date": "2022-09-23",
    //                  "title": "The Offering",
    //                  "video": false,
    //                  "vote_average": 5.7,
    //                  "vote_count": 98
    //              },
    //              {
    //                  "adult": false,
    //                  "backdrop_path": "/1DBDwevWS8OhiT3wqqlW7KGPd6m.jpg",
    //                  "genre_ids": [
    //                    53
    //                  ],
    //                  "id": 985939,
    //                  "original_language": "en",
    //                  "original_title": "Fall",
    //                  "overview": "For best friends Becky and Hunter, life is all about conquering fears and pushing limits. But after they climb 2,000 feet to the top of a remote, abandoned radio tower, they find themselves stranded with no way down. Now Becky and Hunter’s expert climbing skills will be put to the ultimate test as they desperately fight to survive the elements, a lack of supplies, and vertigo-inducing heights",
    //                  "popularity": 619.518,
    //                  "poster_path": "/v28T5F1IygM8vXWZIycfNEm3xcL.jpg",
    //                  "release_date": "2022-08-11",
    //                  "title": "Fall",
    //                  "video": false,
    //                  "vote_average": 7.3,
    //                  "vote_count": 2486
    //              }
    //              ],
    //              "total_pages": 77,
    //              "total_results": 1526
    //    }
    
    
    
    //        Movie(trackName: "Ice Cream",
    //              artistName: "BLACKPINK & Selena Gomez",
    //              artworkUrl100: URL(string:"https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg")!,
    //             collectionName: "The Album",
    //             primaryGenreName: "K-Pop",
    //              releaseDate: Date(),
    //              trackTimeMillis: 157705),
    //        Track(trackName: "Sour Candy",
    //              artistName: "Lady Gaga & BLACKPINK",
    //              artworkUrl100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
    //              collectionName: "The Album",
    //              primaryGenreName: "K-Pop",
    //               releaseDate: Date(),
    //               trackTimeMillis: 157705),
    //        Track(trackName: "WHISTLE",
    //              artistName: "BLACKPINK",
    //              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/89/eb/82/89eb82a7-52ec-9e02-87e9-fcc0ac7e0377/BLACKPINK_SQUARE2-1.jpg/100x100bb.jpg")!,
    //              collectionName: "The Album",
    //              primaryGenreName: "K-Pop",
    //               releaseDate: Date(),
    //               trackTimeMillis: 157705)
    //        ]
    
    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

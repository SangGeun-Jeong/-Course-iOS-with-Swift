import Foundation

// 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의
// 슈퍼 클래스나 서브 클래스로 취급 하는 방법.

// is, as 연산자로 구현
// 값의 타입을 확인하거나, 다른 값으로 변환하는 데 사용.


class MediaItem {
	var name: String
	init(name: String) {
		self.name = name
	}
}

class Movie: MediaItem {
	var director: String
	init(name: String, director: String) {
		self.director = director
		super.init(name: name)
	}
}

class Song: MediaItem {
	var artist: String
	init(name: String, artist: String) {
		self.artist = artist
		super.init(name: name)
	}
}

let library = [
	// instance
	Movie(name: "기생충", director: "봉준호"),
	Song(name: "Butter", artist: "BTS"),
	Movie(name: "올드보이", director: "박찬욱"),
	Song(name: "Wonderwall", artist: "Oasis"),
	Song(name: "Rain", artist: "이적"),
]


var movieCount = 0
var songCount = 0

// is 연산자를 통해서 인스턴스의 타입을 확인할 수 있음.
for item in library {
	if item is Movie {
		movieCount += 1
	} else if item is Song {
		songCount += 1
	}
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

// as? as!, 서브클래스(Movie, Song) 타입으로 다운캐스팅 형변환을 할 수 있음.
// 다운캐스팅이 되면 접근이 가능해짐.
for item in library {
	if let movie = item as? Movie { // 조건부 형식 다운캐스팅
		print("Movie: \(movie.name), dir. \(movie.director)")
	} else if let song = item as? Song {
		print("Song: \(song.name), by \(song.artist)")
	}
}

// as? >> 항상 성공할 것이라고 예상 가능할 때만 사용.
// 에러가 발생하면 run time error 로 프로그램 강제종료.

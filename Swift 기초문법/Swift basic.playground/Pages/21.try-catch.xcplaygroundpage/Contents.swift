import Foundation

// 오류처리를 위한 PhoneError 타입 선언
enum PhoneError: Error { // Error 프로토콜 채택
	case unknown
	case batteryLow(batteryLevel: Int) // 배터리가 몇퍼 남았는지 알려주기 위해 연관값 추가
}

// 에러를 발생하기 위해 throw 사용 (에러를 던짐)
// throw PhoneError.batteryLow(batteryLevel: 20)

// 1. 함수에서 발생한 오류를 해당함수를 호출한 코드에 전파하는 방법
// throws -> throwing 함수
func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String { // 반환값 지정 (String)
	// guard -> false 일때 else문이 실행되고 함수 종료.
	guard batteryLevel != -1 else { throw PhoneError.unknown }
	guard batteryLevel > 20 else { throw
		PhoneError.batteryLow(batteryLevel: 20)}
	
	return "배터리 상태가 정상입니다."
}

/*
 2. do - catch
 do {
	try 오류 발생 가능 코드
 } catch 오류 패턴 {
	처리 코드(예외 처리)
 }
 */

do {
	try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
	print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel) {
	print("배터리 전원 부족 남은 배터리 : \(batteryLevel)%")
} catch {
	print("그 외 오류 발생 : \(error)")
}


// 3. try? 를 사용하면 오류를 옵셔널 값으로 변환하여 처리할 수 있음.
// try? 값이 에러를 발생시키면 리턴값은 nill
let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status) // Optional() - Optional("배터리 상태가 정상입니다.")

// 4. try! throwing 메서드가 에러를 던져주지 않을 것을 확신할 때 사용.
// -1 -> run time error
let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2) // 배터리 상태가 정상입니다.







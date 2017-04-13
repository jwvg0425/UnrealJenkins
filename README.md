#Unreal Jenkins

젠킨스에서 매번 언리얼 빌드하는 거 설정하기가 짜증나서 인터넷 검색한 결과 바탕으로 간단한 배치 파일을 만들어두었습니다.

굳이 젠킨스에서 쓰는 거 아니더라도 걍 커맨드라인에서 빌드하고 싶을 때 써도 됩니다다

## 사용법

젠킨스에서 빌드 세팅 구성할 때, Build 섹션에서 Execute Windows batch command 선택하시고 여기 있는 [jenkinsBuild.bat](jenkinsBuild.bat) 파일 내용 그대로 복붙하시면 됩니다.

복붙하신 다음에 배치파일 맨 위에 있는  enginepath, msbuild, projectname, nowdir, outputdir 이 변수 값들만 자기 프로젝트 상황에 맞춰서 수정해주시면 됩니다.([example.bat](example.bat) 참고)

## Lisence

맘대로 하세요.. you can do whatever you want to do

## TO DO

- [] shipping 빌드 등등 옵션 좀 더 자세하게 설정하기(당장 필요 없어서 안 함. 언젠가 필요해지면 추가할 듯..???)
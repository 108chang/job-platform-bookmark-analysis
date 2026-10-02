# 노트북 실행과 공개본 변경 사항

`bookmark_analysis.ipynb`는 제공된 통합 노트북의 공개용 사본입니다. 분석 코드와 집계 결과·그래프를 보존하고 팀 내부 Drive 다운로드 코드를 로컬 입력 경로로 바꿨습니다. 개별 레코드 미리보기와 UUID가 포함된 저장 출력, 실행 횟수·Colab 메타데이터를 제거했습니다. 원본 파일은 수정하지 않았습니다.

## 실행

Python 3 환경에서 저장소 루트의 `requirements.txt`를 설치한 뒤, **notebooks 폴더에서** Jupyter를 시작하세요. 한글 글꼴은 노트북의 설정 셀을 참고하세요. 의존성 버전은 원본에 고정되어 있지 않아 특정 버전의 결과 일치를 보장하지 않습니다.

노트북은 `../data/private/`에서 다음 분석용 파일을 읽습니다. 파일은 접근 권한이 있는 환경에서 별도로 준비해야 합니다. 입력 파일이 없으면 전체 실행이 불가능하며, 현재 저장된 집계 출력과 코드는 열어 볼 수 있습니다.

| 입력 파일 | 용도 |
|---|---|
| `분석용_전처리데이터_2022_2023.csv` | 메인 분석 |
| `전처리_품질점검표_2022_2023.csv` | 품질 점검 |
| `전체기간_직무별_지원현황_요약.csv` | 전체 기간 비교 |
| `로그_정제데이터_2022_2023.csv.gz` | 로그 분석 |
| `application_sw_development_2022_2023.csv` | SW 지원자 매핑 |
| `SW개발_지원자_검색필터_로그_2022_2023.csv.gz` | 검색 필터 |
| `sw_bookmarks_2022_2023.csv` | 북마크 원천 |
| `sw_applications_2022_2023.csv` | 지원 원천 |
| `sw_bookmark_application_journey_urls_2022_2023.csv.gz` | 동일 공고 전환 여정 |
| `sw_a_nonconversion_bookmark_cohort_2022_2023.csv` | A 공고 미지원 코호트 |
| `sw_a_nonconversion_action_logs_2022_2023.csv.gz` | A 공고 미지원 30일 행동 |
| `sw_application_volume_group_all_actions_2022_2023.csv.gz` | 지원량별 행동 |
| `sw_a_nonconversion_all_action_logs_2022_2023.csv.gz` | A 공고 미지원 전체 행동 |
| `sw_a_nonconversion_all_action_url_summary_2022_2023.csv` | A 공고 미지원 URL 요약 |
| `sw_applicant_action_logs_2022_2023.csv.gz` | SW 지원자 행동 |

## 재현 범위

원본 SQL 덤프의 DB 적재와 분석용 CSV를 만드는 전체 추출 SQL은 제공된 산출물에 포함되어 있지 않습니다. `sql/schema.sql`은 테이블 구조 참고용이며 CSV 생성 스크립트가 아닙니다. 공개본에 원본 덤프만 추가한다고 노트북을 곧바로 실행할 수 있는 구조는 아닙니다. 데이터 준비 단계와 실행 환경 고정은 후속 보완 사항입니다.

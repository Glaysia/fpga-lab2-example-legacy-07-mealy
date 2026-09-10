# Mealy 상태 머신 · 레거시 자료와 비교

이 프로젝트는 원본 교안의 화면과 설계 의도를 읽고, 단일 클록으로 정리한 회로를 직접 작성·실행하는 실습이다. `original/`은 원본 파일을 바이트 그대로 보존한다. `src/`, `sim/`, `constraints/`가 실제 수업에서 실행할 파일이다.

원본은 x를 클록과 조합 출력 입력으로 함께 사용한다. 현재 회로는 clk·enable·bit_in을 나눠 입력 변경과 상태 전이를 따로 관찰한다. 원본의 CLOCK_DEDICATED_ROUTE FALSE를 현재 XDC에 옮기지 않는다.

학생은 `git clone --branch v2.0.0 https://github.com/Glaysia/fpga-lab-template.git lab2_legacy_07_mealy`으로 빈 프로젝트를 만들고 직접 작성한다. `LAB1.code-workspace`를 열어 추천 확장과 01/02/03 작업을 사용한다.

Vivado 설계 top: `lab2_mealy`. FPGA: `xc7s75fgga484-1`. 주 클록: 1 kHz. 실습 파일에는 원본과 달리 버튼 입력 동기화·디바운스가 포함된다.

SW1(sw[7]): 입력. 1에서 버튼을 누르면 상태 전환. 버튼 없이 SW1을 바꿔도 동기화 지연 후 출력 변화. LED[2]=상태, LED[1:0]=출력.

시뮬레이션은 `python tools/lab1.py simulate`. 원본 TB는 자동 PASS나 종료가 없을 수 있으므로 `original/`을 자동 컴파일 목록에 추가하지 않는다. 원본 GUI 화면에 나온 파일명·핀·클록 조건은 현재 프로젝트의 `board.json`·XDC·포트 표와 대조한다.

[원본 파일 해시와 차이](evidence/legacy-provenance.json). 실제 실행 결과는 별도 standalone 검증 기록으로 확인한다.

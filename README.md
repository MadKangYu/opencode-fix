# 느림의 본질

```
curl -fsSL https://raw.githubusercontent.com/MadKangYu/opencode-fix/main/install.sh | bash
```

---

## 물음

> 왜 뜨거운가?

찾지 않아도 될 곳을 찾고 있다.

> 왜 찾는가?

어디에 있는지 모르기 때문이다.

> 어떻게 멈추는가?

알려주면 된다.

---

## 깨달음

```
문제의 크기와 해결의 크기는 비례하지 않는다.

9분의 고통은
한 줄의 앎으로 끝난다.
```

---

## 행함

터미널을 연다.

붙여넣는다.

```
curl -fsSL https://raw.githubusercontent.com/MadKangYu/opencode-fix/main/install.sh | bash
```

끝이다.

---

## 앎의 구조

```
느림
├── 원인: 과잉 탐색
│   ├── 어디를? → 집 전체
│   └── 왜? → 경계가 없음
│
└── 해결: 경계 설정
    ├── 방법: .ignore 파일
    └── 효과: 9분 → 0.01초
```

---

## 경계의 의미

`.ignore`는 "여기는 찾지 마"라는 표지판이다.

### 그 안에 적힌 것들

| 이름 | 한 마디로 | 비유 |
|------|-----------|------|
| `.cache/` | 임시 저장소 | 메모장 |
| `.local/` | 개인 프로그램 | 개인 서랍 |
| `.npm/` | JS 도구함 | 공구함 |
| `.bun/` | 빠른 JS 도구함 | 공구함 |
| `.yarn/` | JS 도구함 | 공구함 |
| `node_modules/` | 프로젝트 부품 | 부품실 |
| `.cargo/` | Rust 부품 | 부품실 |
| `.rustup/` | Rust 설치 | 작업대 |
| `go/` | Go 부품 | 부품실 |
| `.gradle/` | Java 빌드 캐시 | 조립대 |
| `.m2/` | Java 부품 | 부품실 |
| `.Trash/` | 휴지통 | 휴지통 |
| `Library/` | macOS 시스템 | 관리실 |
| `.docker/` | 가상 컴퓨터 | 가상 세계 |

### 공통점

설정 파일이 없다.

뒤질 이유가 없다.

---

## 성찰

노자가 말했다.

> 적게 가진 자는 얻고, 많이 가진 자는 잃는다.

덜 찾으면 더 빨라진다.

---

## 결과

| 항목 | 전 | 후 |
|------|----|----|
| 시작 | 9분 | 0.01초 |
| CPU | 1000% | 10% |
| 팬 | 굉음 | 조용 |

---

## 더 나아감

### 버전을 올린다 (권장)

```
curl -fsSL https://github.com/anomalyco/opencode/releases/download/v1.1.3/opencode-darwin-arm64.zip -o /tmp/oc.zip && unzip -o /tmp/oc.zip -d /tmp/oc && sudo cp /tmp/oc/opencode /opt/homebrew/bin/
```

### 잘못 심은 것을 뽑는다 (해당 시)

```
launchctl unload ~/Library/LaunchAgents/com.opencode.auto-restart.plist 2>/dev/null; rm -f ~/Library/LaunchAgents/com.opencode.auto-restart.plist
```

---

## 출처

| 링크 | 내용 |
|------|------|
| [#6741](https://github.com/anomalyco/opencode/issues/6741) | CPU 폭주 |
| [#7046](https://github.com/anomalyco/opencode/issues/7046) | 메모리 누수 |

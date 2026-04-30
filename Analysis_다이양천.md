\# Fruit Mall Website
-Analysis-



|Student No|22313782|

|---|---|

|Name|다이양천|

|E-Mail| 3122883107@qq.com|



\[ Revision history ]

|Revision date|Version #|Description|Author|

|---|---|---|---|

|2026/04/20|1.00|초기 버전|다이양천|

|2026/04/30|1.01|기능 수정|다이양천|



\---



\# 1. Introduction

\## 1) Executive Summary

온라인 쇼핑의 급속한 발전으로 과일 전자상거래가 주류 소비 방식으로 자리 잡았습니다. 하지만 중소 규모 과일 판매 플랫폼은 체계적이고 표준화된 관리 시스템이 부족하여 상품 관리 혼란, 주문 정보 불투명, 사용자 쇼핑 경험 저하, 공급망 비용 상승 등의 문제가 발생합니다.



이에 Always be Fresh 과일 전자상거래 시스템을 개발하여 사용자에게 편리하고 신속한 과일 구매 서비스를 제공하고, 관리자에게 효율적인 백오피스 관리 기능을 제공하여 과일 온라인 판매의 표준화된 운영을 실현하고자 합니다.



\## 2) Business Goals

1\. 사용자에게 편리한 온라인 과일 구매 서비스를 제공하고 쇼핑 과정을 간소화

2\. 상품 정보, 주문 정보, 물류 정보의 투명성 향상

3\. 서비스 품질 최적화로 사용자 만족도 및 충성도 크게 향상

4\. 공급망 관리 표준화로 유통 및 관리 비용 효과적으로 절감



\## 3) Technical Goals

1\. Client-Server 아키텍처를 적용하여 프론트엔드와 백엔드의 효율적인 상호작용 구현

2\. MySQL 데이터베이스를 사용하여 사용자, 상품, 주문, 장바구니 등의 데이터 안정적으로 저장

3\. Spring Boot 프레임워크 기반 백엔드 개발로 안정성 및 확장성 확보

4\. Vue.js로 프론트엔드를 개발하여 친숙하고 조작하기 쉬운 인터페이스 구축

5\. 시스템 고성능, 빠른 응답 속도 보장 및 이후 기능 확장 지원



\---



\# 2. Use case analysis

\## 2.1. Use Case Diagram

Actor는 User와 Admin이며, include 관계를 적용했습니다.



|Use Case Name|Use Case ID|Korean Name|Actor|

|---|---|---|---|

|Register member|#1|회원등록|User|

|Log-in|#2|로그인|User, Admin|

|Browse Products|#3|상품 조회|User|

|Search Products|#4|상품 검색|User|

|Add to Cart|#5|장바구니 담기|User|

|Place Order|#6|주문하기|User|

|Payment|#7|결제하기|User|

|Track Order|#8|주문 조회|User|

|Admin Management|#9|관리자 관리|Admin|



\## 2.2. Use Case Description

\### 2.2.1 Register

|Use Case #1: Register| |

|---|---|

|Summary|사용자는 개인 정보를 입력하여 계정을 등록하고 시스템 쇼핑 기능을 사용할 수 있습니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자는 시스템에 계정을 등록하지 않은 상태|

|Trigger|사용자가 회원가입 버튼 클릭 후 가입 페이지 진입|

|Success Post Condition|계정이 성공적으로 등록되고 시스템에 로그인할 수 있습니다|

|Failed Post condition|정보 무효 또는 시스템 오류로 가입 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 회원가입 버튼 클릭하여 가입 화면 진입|

|2|사용자가 계정, 비밀번호, 연락처 등 정보 입력|

|3|사용자가 가입 정보 제출|

|4|시스템이 정보 유효성 검증 후 데이터베이스에 저장|

|5|시스템이 가입 성공 메시지 표시 후 로그인 페이지로 이동|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 정보 입력이 유효하지 않음<br/>2a1. 시스템이 입력 오류 메시지 표시|

|3|3a. 계정이 이미 등록됨<br/>3a1. 시스템이 계정 존재 메시지 표시|

|4|4a. 시스템 또는 네트워크 장애<br/>4a1. 시스템이 가입 실패 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026-04-30|

|Etc|None|



\### 2.2.2 Login

|Use Case #2 : Login| |

|---|---|

|Summary|가입한 사용자 및 관리자는 계정과 비밀번호로 로그인하여 해당 기능을 사용합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User, Admin|

|Secondary Actors|Server|

|Preconditions|사용자가 회원가입을 완료한 상태|

|Trigger|사용자가 계정과 비밀번호 입력 후 로그인 버튼 클릭|

|Success Post Condition|로그인 성공 후 시스템 메인 페이지 진입|

|Failed Post condition|계정·비밀번호 오류 또는 시스템 오류로 로그인 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 로그인 화면 진입|

|2|사용자가 올바른 계정과 비밀번호 입력|

|3|사용자가 로그인 버튼 클릭|

|4|시스템이 데이터베이스와 정보 검증|

|5|로그인 성공 후 메인 페이지로 이동|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 계정 또는 비밀번호 오류<br/>2a1. 시스템이 로그인 실패 메시지 표시|

|4|4a. 네트워크 또는 시스템 이상<br/>4a1. 시스템이 연결 실패 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.3 Browse Products

|Use Case #3 : Browse Products| |

|---|---|

|Summary|사용자가 상품 페이지에서 다양한 과일 상품을 조회합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자가 로그인에 성공한 상태|

|Trigger|사용자가 상품 페이지 진입|

|Success Post Condition|상품 목록이 정상적으로 표시됨|

|Failed Post condition|네트워크 오류로 상품 로드 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 로그인 후 상품 페이지 진입|

|2|시스템이 서버에서 상품 데이터 불러오기|

|3|시스템이 인터페이스에 상품 목록 표시|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 네트워크 끊김<br/>2a1. 시스템이 네트워크 이상 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.4 Search Products

|Use Case #4 : Search Products| |

|---|---|

|Summary|사용자가 키워드로 목표 과일 상품을 검색합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자가 로그인에 성공한 상태|

|Trigger|사용자가 검색창에 키워드 입력 후 제출|

|Success Post Condition|키워드와 일치하는 상품 표시|

|Failed Post condition|네트워크 또는 시스템 오류로 검색 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 검색창에 키워드 입력|

|2|사용자가 검색 버튼 클릭|

|3|시스템이 데이터베이스에서 일치하는 상품 조회|

|4|시스템이 검색 결과 표시|



|EXTENSION SCENARIOS| |

|---|---|

|1|1a. 키워드 미입력<br/>1a1. 시스템이 내용 입력 요청 메시지 표시|

|3|3a. 일치하는 상품 없음<br/>3a1. 시스템이 관련 상품 없음 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.5 Add to Cart

|Use Case #5 : Add to Cart| |

|---|---|

|Summary|사용자가 선호하는 상품을 장바구니에 추가하여 임시 저장합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자가 로그인에 성공한 상태|

|Trigger|사용자가 상품의 장바구니 담기 버튼 클릭|

|Success Post Condition|상품이 장바구니에 정상적으로 추가됨|

|Failed Post condition|시스템 오류로 추가 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 상품 선택 후 장바구니 담기 클릭|

|2|시스템이 요청 수신 후 상품 정보 기록|

|3|시스템이 장바구니 데이터 갱신 및 추가 성공 메시지 표시|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 상품 품절<br/>2a1. 시스템이 상품 이용 불가 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.6 Place Order

|Use Case #6 : Place Order| |

|---|---|

|Summary|사용자가 장바구니 상품을 결제하고 주문을 생성합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자 장바구니에 상품이 있고 로그인한 상태|

|Trigger|사용자가 장바구니의 주문하기 버튼 클릭|

|Success Post Condition|주문이 성공적으로 생성되고 결제 대기 상태|

|Failed Post condition|주문 생성 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 장바구니 진입 후 주문하기 클릭|

|2|사용자가 상품, 수량, 수령 정보 확인|

|3|사용자가 주문 제출|

|4|시스템이 주문 생성 후 데이터베이스에 저장|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 수령 정보 불완전<br/>2a1. 시스템이 정보 완성 요청 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.7 Payment

|Use Case #7: Payment| |

|---|---|

|Summary|사용자가 생성된 주문에 대해 결제하여 거래를 완료합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자가 미결제 주문을 생성한 상태|

|Trigger|사용자가 결제 방식 선택 후 결제 확인|

|Success Post Condition|결제 성공 및 주문 상태 갱신|

|Failed Post condition|결제 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 미결제 주문 선택 후 결제 클릭|

|2|사용자가 결제 방식 선택 후 결제 완료|

|3|시스템이 결제 결과 수신|

|4|시스템이 주문 상태를 결제 완료로 갱신|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 결제 실패<br/>2a1. 시스템이 결제 실패 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\### 2.2.8 Track Order

|Use Case #8 : Track Order| |

|---|---|

|Summary|사용자가 자신의 주문 상태 및 물류 정보를 조회합니다|

|Scope|Fruit Mall Website|

|Level|User level|

|Author|다이양천|

|Last Update|2026/04/30|

|Status|Under Review|

|Primary Actor|User|

|Secondary Actors|Server|

|Preconditions|사용자가 주문을 생성한 상태|

|Trigger|사용자가 주문 목록 페이지 진입|

|Success Post Condition|모든 주문 정보 및 상태 표시|

|Failed Post condition|주문 데이터 로드 실패|



|MAIN SUCCESS SCENARIO| |

|---|---|

|1|사용자가 개인 주문 페이지 진입|

|2|시스템이 사용자 주문 데이터 불러오기|

|3|시스템이 주문 상태, 물류 등 정보 표시|



|EXTENSION SCENARIOS| |

|---|---|

|2|2a. 네트워크 이상<br/>2a1. 시스템이 로드 실패 메시지 표시|



|RELATED INFORMATION| |

|---|---|

|Performance|Response time < 2 seconds|

|Frequency|None|

|Concurrency|None|

|Due Date|2026/04/30|

|Etc|None|



\---



\# 3. Domain analysis

1\. User：일반 사용자의 속성 및 기능(계정, 비밀번호, 이름, 연락처 등)을 정의하고 사용자 가입 정보 저장을 담당합니다.

2\. Admin：사용자 기본 속성을 상속받고 관리 권한을 보유하며, 백오피스 운영 및 데이터 유지보수를 담당합니다.

3\. Product：과일 상품 정보(이름, 가격, 재고, 이미지, 설명 등)를 정의합니다.

4\. Cart：사용자가 선택한 상품을 임시 저장하는 기능을 구현하고 수량 수정 및 삭제를 지원합니다.

5\. Order：사용자 구매 시 생성되는 주문 정보(상품 목록, 금액, 상태, 물류 등)를 기록합니다.

6\. Server：사용자, 상품, 장바구니, 주문의 모든 데이터를 저장·관리하고 데이터 읽기·쓰기 서비스를 제공합니다.



\---



\# 4. User Interface prototype

\## 4.1 User Interface

\### 4.1.1 Login \& Register Page

\- 로그인 화면: ID 입력칸, 비밀번호 입력칸, 로그인 버튼, 회원가입 버튼

\- 회원가입 화면: 계정, 비밀번호, 비밀번호 확인, 이름, 전화번호, 제출 버튼, 취소 버튼

\- 가입 규칙: 계정 중복 검사; 비밀번호 길이 및 형식 제한



\### 4.1.2 Product Page

\- 상단 검색창으로 빠른 검색 지원

\- 상품 목록 표시(이미지, 이름, 가격, 재고)

\- 각 상품마다 장바구니 담기 버튼 제공

\- 드래그 리프레시 및 페이지 전환 지원



\### 4.1.3 Cart Page

\- 장바구니에 담긴 모든 상품 표시

\- 수량 증감 조절 지원

\- 총 금액 실시간 표시

\- 주문하기 버튼으로 주문 생성



\### 4.1.4 Order \& Tracking Page

\- 시간 순서대로 모든 주문 표시

\- 주문 상태 표시: 미결제, 결제완료, 배송중, 배송완료

\- 클릭 시 물류 상세 및 상품 정보 조회



\## 4.2 Admin Interface

\### 4.2.1 Admin Login Page

전용 관리자 로그인 진입로, 관리자 계정 및 비밀번호 검증



\### 4.2.2 Admin Management Page

1\. 상품 관리: 상품 등록, 수정, 삭제, 진열/숨김 처리

2\. 주문 관리: 전체 사용자 주문 조회, 주문 상태 변경, A/S 처리

3\. 사용자 관리: 사용자 목록 조회, 이상 계정 정지/해제

4\. 데이터 통계: 판매량, 인기 상품 등 데이터 조회



\---



\# 5. Glossary

|Terms|Description|

|---|---|

|Cart|사용자가 주문하기 전 선택한 상품을 임시로 보관하는 공간|

|Order|사용자 결제 후 생성되는 정식 거래 기록으로 상품, 금액, 상태 포함|

|Admin|백오피스 관리 권한을 가진 시스템 관리자|

|Client|사용자 대상 쇼핑 조작용 프론트엔드 인터페이스|

|Server|데이터 저장, 처리, 응답을 제공하는 백엔드 서비스|

|MySQL|시스템 핵심 데이터 저장에 사용되는 관계형 데이터베이스|

|Spring Boot|안정적이고 효율적인 서버 프로그램 구축용 백엔드 개발 프레임워크|

|Vue.js|친숙한 사용자 인터랙션 인터페이스 구축용 프론트엔드 프레임워크|



\---



\# 6. References

1\. Java Language Official Documentation

2\. MySQL Official Documentation

3\. Spring Boot Official Documentation

4\. Vue.js Official Documentation


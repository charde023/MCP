FROM node:20-bookworm

# 시스템 패키지 및 파이썬, Git 설치
RUN apt-get update && \
    apt-get install -y git python3 python3-pip curl && \
    rm -rf /var/lib/apt/lists/*

# 깃허브, 수파베이스, NotebookLM, Stitch, Google Drive MCP 전역 설치 (캐싱 목적)
RUN npm install -g \
    @modelcontextprotocol/server-github \
    @supabase/mcp-server-supabase \
    notebooklm-mcp \
    stitch-mcp \
    @modelcontextprotocol/server-gdrive

# 호스트와의 마운트를 위한 작업 디렉토리 생성
WORKDIR /workspace

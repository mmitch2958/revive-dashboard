#!/bin/bash
# Deploy Revive Roof Repair Dashboard — run this on the VPS
# Usage: ssh root@187.77.6.198 'bash -s' < deploy-revive-dashboard.sh

mkdir -p /data/revive-dashboard

# Copy dashboard from container's workspace
docker cp paperclip-openclaw-1:/data/.openclaw/workspace/clients/revive-roof-repair/artifacts/07-presentation-dashboard.html /data/revive-dashboard/index.html 2>/dev/null || \
  docker cp $(docker ps -q --filter "name=openclaw"):/data/.openclaw/workspace/clients/revive-roof-repair/artifacts/07-presentation-dashboard.html /data/revive-dashboard/index.html

# Start nginx or python as a quick static server on port 8888
cd /data/revive-dashboard

# Try nginx first, fall back to python
if command -v nginx &>/dev/null; then
  cat > /etc/nginx/sites-available/revive-dashboard <<'EOF'
server {
    listen 8888;
    server_name _;
    root /data/revive-dashboard;
    index index.html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
EOF
  ln -sf /etc/nginx/sites-available/revive-dashboard /etc/nginx/sites-enabled/revive-dashboard 2>/dev/null || true
  nginx -t && nginx -s reload 2>/dev/null || true
  echo "✅ Dashboard deployed on port 8888"
else
  nohup python3 -m http.server 8888 --directory /data/revive-dashboard > /dev/null 2>&1 &
  echo "✅ Dashboard deployed on port 8888 (python3)"
fi

echo "🌐 Access at: http://187.77.6.198:8888"

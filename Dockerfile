FROM ubuntu:20.04

# 安装必要的工具
RUN apt-get update && \
        apt-get install -y \
        neovim \
        git \
        curl \
        && apt-get clean

# 安装 lazy.nvim 插件管理器
        RUN git clone --depth 1 https://github.com/folke/lazy.nvim \
            ~/.local/share/nvim/site/pack/lazy/start/lazy.nvim

# 设置Neovim配置目录
RUN mkdir -p ~/.config/nvim

# 拷贝本地的init.lua文件到容器中
COPY init.lua /root/.config/nvim/init.lua

CMD ["nvim"]

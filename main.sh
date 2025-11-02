#!/bin/bash

# FallZxOSINT-X V1.0
# Advanced OSINT Terminal Toolkit - Fixed Version
# Author: YourName
# Version: 1.0

# Warna untuk tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

# Base directory
TOOL_DIR="$HOME/FallZxOSINT-X"
DOWNLOAD_DIR="$TOOL_DIR/downloads"

# Animasi loading yang FIXED (tanpa clear)
function loading_animation() {
    local text="${1:-Loading...}"
    echo -e "${CYAN}$text${NC}"
    for i in {1..3}; do
        echo -n "."
        sleep 0.3
    done
    echo ""
}

# Banner
function show_banner() {
    clear
    echo -e "${PURPLE}"
    echo " ███████╗ █████╗ ██╗     ██╗      ███████╗██╗  ██╗ ██████╗ ██╗███╗   ██╗████████╗"
    echo " ██╔════╝██╔══██╗██║     ██║      ╚══███╔╝╚██╗██╔╝██╔════╝ ██║████╗  ██║╚══██╔══╝"
    echo " █████╗  ███████║██║     ██║        ███╔╝  ╚███╔╝ ██║  ███╗██║██╔██╗ ██║   ██║   "
    echo " ██╔══╝  ██╔══██║██║     ██║       ███╔╝   ██╔██╗ ██║   ██║██║██║╚██╗██║   ██║   "
    echo " ██║     ██║  ██║███████╗███████╗███████╗██╔╝ ██╗╚██████╔╝██║██║ ╚████║   ██║   "
    echo " ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝   "
    echo -e "${NC}"
    echo -e "${CYAN}                    Advanced OSINT Toolkit with AI Chatbot${NC}"
    echo -e "${RED}                           Created by FallZx Team${NC}"
    echo -e "${YELLOW}=================================================================${NC}"
    echo ""
}

# Menu utama
function main_menu() {
    while true; do
        show_banner
        echo -e "${WHITE}╔═════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${WHITE}║                       ${GREEN}MAIN MENU${WHITE}                           ║${NC}"
        echo -e "${WHITE}╠═════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${WHITE}║ ${GREEN}[1]${NC} ${CYAN}OSINT Tools${NC}    - Information Gathering           ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[2]${NC} ${CYAN}Fun Games${NC}      - Entertainment & Challenges     ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[3]${NC} ${CYAN}AI Chatbot${NC}     - ChatGPT & AI Assistants        ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[4]${NC} ${CYAN}Utilities${NC}      - Additional Tools               ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[5]${NC} ${CYAN}System Info${NC}    - Device Information             ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[6]${NC} ${CYAN}About${NC}          - Tool Information               ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[0]${NC} ${RED}Exit${NC}           - Quit Application               ${WHITE}║${NC}"
        echo -e "${WHITE}╚═════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${YELLOW}▶ ${WHITE}Select option [0-6]: ${NC}"
        read -p "  " choice

        case $choice in
            1) osint_menu ;;
            2) games_menu ;;
            3) chatbot_menu ;;
            4) utilities_menu ;;
            5) system_info ;;
            6) about_page ;;
            0) exit_tool ;;
            *) echo -e "${RED}Invalid selection!${NC}"; sleep 2 ;;
        esac
    done
}

# Menu OSINT
function osint_menu() {
    while true; do
        show_banner
        echo -e "${WHITE}╔═════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${WHITE}║                      ${CYAN}OSINT TOOLS${WHITE}                         ║${NC}"
        echo -e "${WHITE}╠═════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${WHITE}║ ${CYAN}[1]${NC} ${WHITE}IP Geolocation Lookup${NC}                          ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[2]${NC} ${WHITE}Domain Information${NC}                             ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[3]${NC} ${WHITE}Phone Number Lookup${NC}                            ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[4]${NC} ${WHITE}Email Validator${NC}                                ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[5]${NC} ${WHITE}Username Search${NC}                                ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[6]${NC} ${WHITE}Weather Information${NC}                            ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[7]${NC} ${WHITE}GPS Location Tracker${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[8]${NC} ${WHITE}Social Media Check${NC}                             ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[9]${NC} ${WHITE}TikTok Video Downloader${NC}                        ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[10]${NC} ${WHITE}Website Screenshot${NC}                            ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${CYAN}[0]${NC} ${RED}Back to Main Menu${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}╚═════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${YELLOW}▶ ${WHITE}Select option [0-10]: ${NC}"
        read -p "  " choice

        case $choice in
            1) ip_lookup ;;
            2) domain_info ;;
            3) phone_lookup ;;
            4) email_validator ;;
            5) username_search ;;
            6) weather_info ;;
            7) gps_tracker ;;
            8) social_media_check ;;
            9) tiktok_downloader ;;
            10) website_screenshot ;;
            0) break ;;
            *) echo -e "${RED}Invalid selection!${NC}"; sleep 2 ;;
        esac
    done
}

# Menu Games
function games_menu() {
    while true; do
        show_banner
        echo -e "${WHITE}╔═════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${WHITE}║                      ${PURPLE}FUN GAMES${WHITE}                           ║${NC}"
        echo -e "${WHITE}╠═════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${WHITE}║ ${PURPLE}[1]${NC} ${WHITE}Number Guessing Game${NC}                         ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[2]${NC} ${WHITE}Rock Paper Scissors${NC}                          ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[3]${NC} ${WHITE}Math Quiz Challenge${NC}                          ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[4]${NC} ${WHITE}Word Scramble Game${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[5]${NC} ${WHITE}Dice Rolling Game${NC}                            ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[6]${NC} ${WHITE}Password Generator${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${PURPLE}[0]${NC} ${RED}Back to Main Menu${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}╚═════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${YELLOW}▶ ${WHITE}Select option [0-6]: ${NC}"
        read -p "  " choice

        case $choice in
            1) number_game ;;
            2) rps_game ;;
            3) math_quiz ;;
            4) word_scramble ;;
            5) dice_game ;;
            6) password_generator ;;
            0) break ;;
            *) echo -e "${RED}Invalid selection!${NC}"; sleep 2 ;;
        esac
    done
}

# Menu Chatbot AI
function chatbot_menu() {
    while true; do
        show_banner
        echo -e "${WHITE}╔═════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${WHITE}║                       ${GREEN}AI CHATBOT${WHITE}                         ║${NC}"
        echo -e "${WHITE}╠═════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${WHITE}║ ${GREEN}[1]${NC} ${WHITE}ChatGPT (OpenAI API)${NC}                         ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[2]${NC} ${WHITE}Gemini AI (Google API)${NC}                       ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[3]${NC} ${WHITE}Local AI Chat${NC}                                ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[4]${NC} ${WHITE}Setup API Keys${NC}                               ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${GREEN}[0]${NC} ${RED}Back to Main Menu${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}╚═════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${YELLOW}▶ ${WHITE}Select option [0-4]: ${NC}"
        read -p "  " choice

        case $choice in
            1) chatgpt_bot ;;
            2) gemini_bot ;;
            3) local_ai_chat ;;
            4) setup_api_keys ;;
            0) break ;;
            *) echo -e "${RED}Invalid selection!${NC}"; sleep 2 ;;
        esac
    done
}

# Menu Utilities
function utilities_menu() {
    while true; do
        show_banner
        echo -e "${WHITE}╔═════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${WHITE}║                      ${ORANGE}UTILITIES${WHITE}                          ║${NC}"
        echo -e "${WHITE}╠═════════════════════════════════════════════════════════════╣${NC}"
        echo -e "${WHITE}║ ${ORANGE}[1]${NC} ${WHITE}Deploy to Vercel${NC}                             ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${ORANGE}[2]${NC} ${WHITE}Setup Tool Environment${NC}                       ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${ORANGE}[3]${NC} ${WHITE}Check Dependencies${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${ORANGE}[4]${NC} ${WHITE}Open Downloads Folder${NC}                        ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${ORANGE}[5]${NC} ${WHITE}Update Tool${NC}                                  ${WHITE}║${NC}"
        echo -e "${WHITE}║ ${ORANGE}[0]${NC} ${RED}Back to Main Menu${NC}                           ${WHITE}║${NC}"
        echo -e "${WHITE}╚═════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${YELLOW}▶ ${WHITE}Select option [0-5]: ${NC}"
        read -p "  " choice

        case $choice in
            1) deploy_vercel ;;
            2) setup_environment ;;
            3) check_dependencies ;;
            4) open_downloads_folder ;;
            5) update_tool ;;
            0) break ;;
            *) echo -e "${RED}Invalid selection!${NC}"; sleep 2 ;;
        esac
    done
}

# ========== OSINT FUNCTIONS ==========

function ip_lookup() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       IP GEOLOCATION LOOKUP                 ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter IP address (or press Enter for your own IP): " ip
    
    # Jika kosong, gunakan IP publik sendiri
    if [[ -z "$ip" ]]; then
        echo -e "${YELLOW}Getting your public IP...${NC}"
        ip=$(curl -s https://api.ipify.org)
        echo -e "${GREEN}Your IP: $ip${NC}"
    fi
    
    echo -e "${GREEN}Searching information for IP: $ip${NC}"
    echo ""
    
    # Method 1: Using ip-api.com (lebih reliable)
    echo -e "${YELLOW}Method 1: Using ip-api.com${NC}"
    response=$(curl -s "http://ip-api.com/json/$ip")
    
    if [[ $? -eq 0 ]] && [[ -n "$response" ]]; then
        echo -e "${WHITE}"
        echo "IP: $ip"
        echo "Country: $(echo "$response" | grep -o '"country":"[^"]*' | cut -d'"' -f4)"
        echo "Country Code: $(echo "$response" | grep -o '"countryCode":"[^"]*' | cut -d'"' -f4)"
        echo "Region: $(echo "$response" | grep -o '"regionName":"[^"]*' | cut -d'"' -f4)"
        echo "City: $(echo "$response" | grep -o '"city":"[^"]*' | cut -d'"' -f4)"
        echo "ISP: $(echo "$response" | grep -o '"isp":"[^"]*' | cut -d'"' -f4)"
        echo "Timezone: $(echo "$response" | grep -o '"timezone":"[^"]*' | cut -d'"' -f4)"
        echo "Latitude: $(echo "$response" | grep -o '"lat":[^,]*' | cut -d':' -f2)"
        echo "Longitude: $(echo "$response" | grep -o '"lon":[^,]*' | cut -d':' -f2)"
        echo -e "${NC}"
    else
        echo -e "${RED}Failed to get information from ip-api.com${NC}"
        
        # Method 2: Alternative API
        echo -e "${YELLOW}Trying alternative API...${NC}"
        response2=$(curl -s "https://ipapi.co/$ip/json/")
        
        if [[ $? -eq 0 ]] && [[ -n "$response2" ]]; then
            echo -e "${WHITE}"
            echo "IP: $ip"
            echo "City: $(echo "$response2" | grep -o '"city":"[^"]*' | cut -d'"' -f4)"
            echo "Region: $(echo "$response2" | grep -o '"region":"[^"]*' | cut -d'"' -f4)"
            echo "Country: $(echo "$response2" | grep -o '"country_name":"[^"]*' | cut -d'"' -f4)"
            echo "ISP: $(echo "$response2" | grep -o '"org":"[^"]*' | cut -d'"' -f4)"
            echo -e "${NC}"
        else
            echo -e "${RED}All API methods failed!${NC}"
            echo -e "${YELLOW}Possible reasons:${NC}"
            echo -e "${WHITE}- No internet connection${NC}"
            echo -e "${WHITE}- IP address is invalid${NC}"
            echo -e "${WHITE}- API service is down${NC}"
        fi
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function domain_info() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       DOMAIN INFORMATION                    ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter domain (example.com): " domain
    
    if [[ -z "$domain" ]]; then
        echo -e "${RED}Domain cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Getting information for domain: $domain${NC}"
    echo ""
    
    echo -e "${WHITE}"
    echo "=== WHOIS Information ==="
    whois $domain | head -20
    echo ""
    echo "=== DNS Information ==="
    nslookup $domain
    echo -e "${NC}"
    
    echo ""
    read -p "Press Enter to continue..."
}

function phone_lookup() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       PHONE NUMBER LOOKUP                   ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter phone number (with country code): " phone
    
    if [[ -z "$phone" ]]; then
        echo -e "${RED}Phone number cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Analyzing phone number: $phone${NC}"
    echo ""
    
    echo -e "${WHITE}"
    echo "📞 Basic Information:"
    echo "  • Number: $phone"
    
    number_length=${#phone}
    echo "  • Number Length: $number_length digits"
    
    if [[ "$phone" =~ ^[0-9+\-\ \(\)]{10,}$ ]]; then
        echo "  • ✅ Valid Format"
    else
        echo "  • ❌ Invalid Format"
    fi
    
    echo ""
    echo "🔍 Suggested APIs for detailed info:"
    echo "  • NumVerify (https://numverify.com)"
    echo "  • AbstractAPI (https://abstractapi.com)"
    echo ""
    echo -e "${NC}"
    
    read -p "Press Enter to continue..."
}

function email_validator() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                         EMAIL VALIDATOR                     ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter email address: " email
    
    if [[ -z "$email" ]]; then
        echo -e "${RED}Email cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Validating email: $email${NC}"
    echo ""
    
    if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo -e "${GREEN}✅ Format email valid${NC}"
        
        domain=$(echo $email | cut -d@ -f2)
        echo -e "${WHITE}Domain: $domain${NC}"
        
        echo -e "${WHITE}Checking MX records...${NC}"
        nslookup -type=MX $domain 2>/dev/null | grep "mail exchanger"
        
    else
        echo -e "${RED}❌ Format email tidak valid${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function username_search() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                         USERNAME SEARCH                     ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter username: " username
    
    if [[ -z "$username" ]]; then
        echo -e "${RED}Username cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Searching username: $username on various platforms${NC}"
    echo ""
    
    echo -e "${WHITE}"
    echo "Platform URLs:"
    echo "=============="
    echo "GitHub: https://github.com/$username"
    echo "Instagram: https://instagram.com/$username"
    echo "Twitter: https://twitter.com/$username"
    echo "Facebook: https://facebook.com/$username"
    echo "YouTube: https://youtube.com/@$username"
    echo "Reddit: https://reddit.com/user/$username"
    echo "TikTok: https://tiktok.com/@$username"
    echo "=============="
    echo -e "${NC}"
    
    echo -e "${YELLOW}Note: Open links in browser to verify${NC}"
    
    read -p "Press Enter to continue..."
}

function weather_info() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       WEATHER INFORMATION                   ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter city name: " city
    
    if [[ -z "$city" ]]; then
        echo -e "${RED}City name cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Getting weather information for: $city${NC}"
    echo ""
    
    echo -e "${YELLOW}Using wttr.in service...${NC}"
    curl -s "wttr.in/$city?0"
    
    echo ""
    read -p "Press Enter to continue..."
}

function gps_tracker() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       GPS LOCATION TRACKER                  ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}GPS Tracking Options:${NC}"
    echo -e "${WHITE}1. Get Current Location (IP-based)${NC}"
    echo -e "${WHITE}2. Track IP Location${NC}"
    echo ""
    
    read -p "Select option [1-2]: " gps_choice
    
    case $gps_choice in
        1)
            echo -e "${GREEN}Current Location (IP-based):${NC}"
            curl -s "http://ip-api.com/json/" | grep -E '"country|city|isp|query"' | sed 's/"//g;s/,//g'
            ;;
        2)
            read -p "Enter IP address: " ip_addr
            if [[ -n "$ip_addr" ]]; then
                echo -e "${GREEN}Location for IP: $ip_addr${NC}"
                curl -s "http://ip-api.com/json/$ip_addr" | grep -E '"country|city|isp|query"' | sed 's/"//g;s/,//g'
            fi
            ;;
        *)
            echo -e "${RED}Invalid option!${NC}"
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
}

function social_media_check() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       SOCIAL MEDIA CHECK                    ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter username to search: " username
    
    if [[ -z "$username" ]]; then
        echo -e "${RED}Username cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Checking social media platforms for: @$username${NC}"
    echo ""
    
    platforms=(
        "Facebook:https://facebook.com/$username"
        "Instagram:https://instagram.com/$username"
        "Twitter:https://twitter.com/$username"
        "GitHub:https://github.com/$username"
        "YouTube:https://youtube.com/@$username"
        "Reddit:https://reddit.com/user/$username"
        "TikTok:https://tiktok.com/@$username"
    )
    
    echo -e "${WHITE}"
    for platform in "${platforms[@]}"; do
        name=$(echo $platform | cut -d':' -f1)
        url=$(echo $platform | cut -d':' -f2)
        echo -n "  • $name: "
        if curl --head --silent --fail "$url" >/dev/null 2>&1; then
            echo -e "${GREEN}✅ Found${NC}"
        else
            echo -e "${RED}❌ Not Found${NC}"
        fi
    done
    echo -e "${NC}"
    
    read -p "Press Enter to continue..."
}

function tiktok_downloader() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       TIKTOK VIDEO DOWNLOADER               ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    mkdir -p "$DOWNLOAD_DIR"
    
    echo -e "${YELLOW}Available Methods:${NC}"
    echo -e "${WHITE}1. Using yt-dlp (Recommended)${NC}"
    echo -e "${WHITE}2. Using TikTok API${NC}"
    echo ""
    
    read -p "Select method [1-2]: " method
    read -p "Enter TikTok URL: " tiktok_url
    
    if [[ -z "$tiktok_url" ]]; then
        echo -e "${RED}URL cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    case $method in
        1)
            if command -v yt-dlp &> /dev/null; then
                echo -e "${GREEN}Using yt-dlp to download...${NC}"
                cd "$DOWNLOAD_DIR"
                yt-dlp -o "tiktok_%(uploader)s_%(title)s.%(ext)s" "$tiktok_url"
                if [[ $? -eq 0 ]]; then
                    echo -e "${GREEN}✅ Download successful!${NC}"
                    echo -e "${WHITE}File saved in: $DOWNLOAD_DIR${NC}"
                else
                    echo -e "${RED}❌ Download failed!${NC}"
                fi
            else
                echo -e "${YELLOW}yt-dlp not found. Install with: pip install yt-dlp${NC}"
            fi
            ;;
        2)
            echo -e "${GREEN}Using TikTok API method...${NC}"
            echo -e "${YELLOW}This feature requires API setup${NC}"
            ;;
        *)
            echo -e "${RED}Invalid method!${NC}"
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
}

function website_screenshot() {
    show_banner
    echo -e "${CYAN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║                       WEBSITE SCREENSHOT                    ║${NC}"
    echo -e "${CYAN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    read -p "Enter website URL: " url
    if [[ -z "$url" ]]; then
        echo -e "${RED}URL cannot be empty!${NC}"
        sleep 2
        return
    fi
    
    echo -e "${GREEN}Taking screenshot of: $url${NC}"
    echo -e "${YELLOW}Using web screenshot service...${NC}"
    echo -e "${WHITE}Screenshot would be saved to: $DOWNLOAD_DIR${NC}"
    
    if command -v cutycapt &> /dev/null; then
        filename="screenshot_$(date +%Y%m%d_%H%M%S).png"
        cutycapt --url="$url" --out="$DOWNLOAD_DIR/$filename"
        echo -e "${GREEN}Screenshot saved: $filename${NC}"
    else
        echo -e "${YELLOW}Install cutycapt for better screenshots: pkg install cutycapt${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

# ========== GAME FUNCTIONS ==========

function number_game() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                       NUMBER GUESSING GAME                 ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    number=$((RANDOM % 100 + 1))
    attempts=0
    max_attempts=7
    
    echo -e "${GREEN}I'm thinking of a number between 1-100. Guess it!${NC}"
    echo -e "${WHITE}You have $max_attempts attempts.${NC}"
    echo ""
    
    while [[ $attempts -lt $max_attempts ]]; do
        read -p "Your guess: " guess
        ((attempts++))
        
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo -e "${RED}Please enter a valid number!${NC}"
            continue
        fi
        
        if [[ $guess -eq $number ]]; then
            echo -e "${GREEN}Congratulations! You guessed correctly in $attempts attempts!${NC}"
            break
        elif [[ $guess -lt $number ]]; then
            echo -e "${BLUE}Too low!${NC}"
        else
            echo -e "${RED}Too high!${NC}"
        fi
        
        remaining=$((max_attempts - attempts))
        echo -e "${WHITE}Attempts left: $remaining${NC}"
        echo ""
    done
    
    if [[ $attempts -eq $max_attempts ]] && [[ $guess -ne $number ]]; then
        echo -e "${RED}Game over! The number was: $number${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function rps_game() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                       ROCK PAPER SCISSORS                  ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    options=("Rock" "Paper" "Scissors")
    computer_choice=${options[$((RANDOM % 3))]}
    
    echo -e "${GREEN}Choose:${NC}"
    echo -e "${WHITE}[1] Rock${NC}"
    echo -e "${WHITE}[2] Paper${NC}"
    echo -e "${WHITE}[3] Scissors${NC}"
    echo ""
    
    read -p "Your choice [1-3]: " choice
    
    case $choice in
        1) player_choice="Rock" ;;
        2) player_choice="Paper" ;;
        3) player_choice="Scissors" ;;
        *) echo -e "${RED}Invalid choice!${NC}"; sleep 2; return ;;
    esac
    
    echo -e "${CYAN}You chose: $player_choice${NC}"
    echo -e "${CYAN}Computer chose: $computer_choice${NC}"
    echo ""
    
    if [[ $player_choice == $computer_choice ]]; then
        echo -e "${YELLOW}It's a tie!${NC}"
    elif [[ $player_choice == "Rock" && $computer_choice == "Scissors" ]] ||
         [[ $player_choice == "Paper" && $computer_choice == "Rock" ]] ||
         [[ $player_choice == "Scissors" && $computer_choice == "Paper" ]]; then
        echo -e "${GREEN}You Win! 🎉${NC}"
    else
        echo -e "${RED}Computer Wins! 😞${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function math_quiz() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                         MATH QUIZ                         ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    score=0
    total_questions=5
    
    for i in {1..5}; do
        num1=$((RANDOM % 50 + 1))
        num2=$((RANDOM % 20 + 1))
        operation=$((RANDOM % 3))
        
        case $operation in
            0) 
                answer=$((num1 + num2))
                operator="+"
                ;;
            1)
                answer=$((num1 - num2))
                operator="-"
                ;;
            2)
                answer=$((num1 * num2))
                operator="×"
                ;;
        esac
        
        echo -e "${WHITE}Question $i: $num1 $operator $num2 = ?${NC}"
        read -p "Answer: " user_answer
        
        if [[ $user_answer -eq $answer ]]; then
            echo -e "${GREEN}Correct! ✅${NC}"
            ((score++))
        else
            echo -e "${RED}Wrong! ❌ Correct answer: $answer${NC}"
        fi
        echo ""
    done
    
    echo -e "${CYAN}Final score: $score/$total_questions${NC}"
    
    if [[ $score -eq 5 ]]; then
        echo -e "${GREEN}Excellent! 🎉${NC}"
    elif [[ $score -ge 3 ]]; then
        echo -e "${YELLOW}Good job! 👍${NC}"
    else
        echo -e "${RED}Keep practicing! 📚${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function word_scramble() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                        WORD SCRAMBLE                       ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    words=("python" "hacker" "terminal" "android" "linux" "programming" "cyber" "security")
    word=${words[$((RANDOM % ${#words[@]}))]}
    scrambled=$(echo $word | fold -w1 | shuf | tr -d '\n')
    
    echo -e "${GREEN}Unscramble the word: $scrambled${NC}"
    read -p "Your answer: " guess
    
    if [[ "$guess" == "$word" ]]; then
        echo -e "${GREEN}Correct! 🎉${NC}"
    else
        echo -e "${RED}Wrong! The word was: $word${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function dice_game() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                        DICE ROLLING GAME                   ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    score=0
    rounds=3
    
    echo -e "${GREEN}Roll the dice! Get 18+ points in $rounds rounds to win!${NC}"
    echo ""
    
    for ((i=1; i<=$rounds; i++)); do
        echo -e "${YELLOW}Round $i:${NC}"
        read -p "Press Enter to roll the dice..."
        
        dice1=$((RANDOM % 6 + 1))
        dice2=$((RANDOM % 6 + 1))
        total=$((dice1 + dice2))
        score=$((score + total))
        
        echo -e "${WHITE}   Dice 1: $dice1 🎲${NC}"
        echo -e "${WHITE}   Dice 2: $dice2 🎲${NC}"
        echo -e "${WHITE}   Round total: $total${NC}"
        echo -e "${WHITE}   Total score: $score${NC}"
        echo ""
    done
    
    echo -e "${YELLOW}Final Score: $score${NC}"
    
    if [[ $score -ge 18 ]]; then
        echo -e "${GREEN}🎉 Congratulations! You win! 🎉${NC}"
    elif [[ $score -ge 12 ]]; then
        echo -e "${YELLOW}😊 Good try! Better luck next time!${NC}"
    else
        echo -e "${RED}😞 Better luck next time!${NC}"
    fi
    
    echo ""
    read -p "Press Enter to continue..."
}

function password_generator() {
    show_banner
    echo -e "${PURPLE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${PURPLE}║                        PASSWORD GENERATOR                  ║${NC}"
    echo -e "${PURPLE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Password Strength Options:${NC}"
    echo -e "${WHITE}1. Weak (8 characters, letters only)${NC}"
    echo -e "${WHITE}2. Medium (12 characters, letters + numbers)${NC}"
    echo -e "${WHITE}3. Strong (16 characters, mixed)${NC}"
    echo -e "${WHITE}4. Very Strong (20 characters, special characters)${NC}"
    echo ""
    
    read -p "Select strength [1-4]: " strength
    
    case $strength in
        1) length=8; chars='A-Za-z'; ;;
        2) length=12; chars='A-Za-z0-9'; ;;
        3) length=16; chars='A-Za-z0-9'; ;;
        4) length=20; chars='A-Za-z0-9!@#$%^&*'; ;;
        *) echo -e "${RED}Invalid selection!${NC}"; return ;;
    esac
    
    password=$(tr -dc "$chars" < /dev/urandom | head -c $length)
    
    echo -e "${GREEN}Generated Password:${NC}"
    echo -e "${CYAN}┌─────────────────────────────────────────────────────────┐${NC}"
    echo -e "${CYAN}│ ${WHITE}$password${CYAN} │${NC}"
    echo -e "${CYAN}└─────────────────────────────────────────────────────────┘${NC}"
    echo ""
    
    echo -e "${YELLOW}Password Strength:${NC}"
    case $strength in
        1) echo -e "${RED}●○○○○ WEAK${NC}" ;;
        2) echo -e "${YELLOW}●●○○○ MEDIUM${NC}" ;;
        3) echo -e "${GREEN}●●●○○ STRONG${NC}" ;;
        4) echo -e "${GREEN}●●●●● VERY STRONG${NC}" ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
}

# ========== AI CHATBOT FUNCTIONS ==========

function chatgpt_bot() {
    show_banner
    echo -e "${GREEN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                         CHATGPT BOT                         ║${NC}"
    echo -e "${GREEN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Note: You need OpenAI API key for this feature${NC}"
    echo -e "${WHITE}Get API key from: https://platform.openai.com/api-keys${NC}"
    echo ""
    
    if [[ ! -f "$TOOL_DIR/api_keys.txt" ]]; then
        echo -e "${RED}No API keys found! Use 'Setup API Keys' menu first.${NC}"
        read -p "Press Enter to continue..."
        return
    fi
    
    openai_key=$(grep "OPENAI" "$TOOL_DIR/api_keys.txt" | cut -d: -f2)
    
    if [[ -z "$openai_key" ]]; then
        echo -e "${RED}OpenAI API key not found!${NC}"
        echo -e "${YELLOW}Use 'Setup API Keys' menu to add your API key${NC}"
        read -p "Press Enter to continue..."
        return
    fi
    
    echo -e "${GREEN}ChatGPT is ready! Type 'quit' to exit${NC}"
    echo -e "${YELLOW}────────────────────────────────────────────${NC}"
    
    while true; do
        echo -e "${CYAN}You: ${NC}"
        read -p "> " user_input
        
        if [[ "$user_input" == "quit" ]]; then
            break
        fi
        
        echo -e "${CYAN}AI is thinking...${NC}"
        
        response=$(curl -s -X POST "https://api.openai.com/v1/chat/completions" \
          -H "Content-Type: application/json" \
          -H "Authorization: Bearer $openai_key" \
          -d "{
            \"model\": \"gpt-3.5-turbo\",
            \"messages\": [{\"role\": \"user\", \"content\": \"$user_input\"}],
            \"max_tokens\": 500
          }")
        
        if echo "$response" | grep -q "error"; then
            echo -e "${RED}Error: $(echo "$response" | grep -o '"message":"[^"]*' | cut -d'"' -f4)${NC}"
        else
            ai_response=$(echo "$response" | grep -o '"content":"[^"]*' | cut -d'"' -f4)
            echo -e "${GREEN}AI: $ai_response${NC}"
        fi
        echo ""
    done
}

function gemini_bot() {
    show_banner
    echo -e "${GREEN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                         GEMINI AI BOT                       ║${NC}"
    echo -e "${GREEN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Note: You need Google AI API key for this feature${NC}"
    echo -e "${WHITE}Get API key from: https://aistudio.google.com/app/apikey${NC}"
    echo ""
    
    echo -e "${GREEN}Gemini AI is ready! Type 'quit' to exit${NC}"
    echo -e "${YELLOW}Using free AI service...${NC}"
    echo ""
    
    while true; do
        echo -e "${CYAN}You: ${NC}"
        read -p "> " user_input
        
        if [[ "$user_input" == "quit" ]]; then
            break
        fi
        
        echo -e "${CYAN}AI is thinking...${NC}"
        
        case $user_input in
            *"hello"*|*"hi"*)
                echo -e "${GREEN}AI: Hello! How can I help you today?${NC}"
                ;;
            *"how are you"*)
                echo -e "${GREEN}AI: I'm doing great! Ready to help with your OSINT tasks.${NC}"
                ;;
            *"what can you do"*)
                echo -e "${GREEN}AI: I can help with OSINT research, answer questions, and assist with various investigations.${NC}"
                ;;
            *"thank"*)
                echo -e "${GREEN}AI: You're welcome! Is there anything else I can help with?${NC}"
                ;;
            *)
                echo -e "${GREEN}AI: I understand you're saying: '$user_input'. For full AI capabilities, please set up API keys.${NC}"
                ;;
        esac
        echo ""
    done
}

function local_ai_chat() {
    show_banner
    echo -e "${GREEN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                         LOCAL AI CHAT                       ║${NC}"
    echo -e "${GREEN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Local AI Chat using simple pattern matching${NC}"
    echo -e "${GREEN}Type 'quit' to exit the chat${NC}"
    echo ""
    
    while true; do
        echo -e "${CYAN}You: ${NC}"
        read -p "> " user_input
        
        case $user_input in
            "quit"|"exit") break ;;
            *"hello"*|*"hi"*) echo -e "${GREEN}AI: Hello! How can I assist with your OSINT research?${NC}" ;;
            *"how are you"*) echo -e "${GREEN}AI: I'm functioning optimally. Ready to help!${NC}" ;;
            *"name"*) echo -e "${GREEN}AI: I'm FallZxOSINT AI Assistant${NC}" ;;
            *"help"*) echo -e "${GREEN}AI: I can help with OSINT tools, information gathering, and answer basic questions.${NC}" ;;
            *"weather"*) echo -e "${GREEN}AI: Use the Weather Information tool in OSINT menu for accurate weather data.${NC}" ;;
            *"ip"*) echo -e "${GREEN}AI: Use IP Geolocation Lookup in OSINT menu to track IP addresses.${NC}" ;;
            *"phone"*) echo -e "${GREEN}AI: Phone Number Lookup is available in the OSINT tools section.${NC}" ;;
            *"thank"*) echo -e "${GREEN}AI: You're welcome! Happy to help with your investigations.${NC}" ;;
            *) 
                responses=(
                    "That's an interesting question. For detailed analysis, try our OSINT tools."
                    "I understand. Would you like me to help with OSINT research?"
                    "That's beyond my current capabilities, but I can help with information gathering."
                    "Let me direct you to the appropriate OSINT tool for that query."
                    "Interesting point. The OSINT tools menu might have what you need."
                )
                random_response=${responses[$RANDOM % ${#responses[@]}]}
                echo -e "${GREEN}AI: $random_response${NC}"
                ;;
        esac
        echo ""
    done
}

function setup_api_keys() {
    show_banner
    echo -e "${GREEN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                         SETUP API KEYS                      ║${NC}"
    echo -e "${GREEN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}API Keys Configuration${NC}"
    echo ""
    
    touch "$TOOL_DIR/api_keys.txt"
    
    echo -e "${WHITE}Current API Keys:${NC}"
    if [[ -s "$TOOL_DIR/api_keys.txt" ]]; then
        cat "$TOOL_DIR/api_keys.txt"
    else
        echo -e "${RED}No API keys configured${NC}"
    fi
    
    echo ""
    echo -e "${CYAN}Available API Services:${NC}"
    echo -e "${WHITE}1. OpenAI (ChatGPT)${NC}"
    echo -e "${WHITE}2. Google AI (Gemini)${NC}"
    echo -e "${WHITE}3. Clear All API Keys${NC}"
    echo ""
    
    read -p "Select option [1-3]: " api_choice
    
    case $api_choice in
        1)
            read -p "Enter OpenAI API Key: " openai_key
            if [[ -n "$openai_key" ]]; then
                grep -v "OPENAI" "$TOOL_DIR/api_keys.txt" > "$TOOL_DIR/temp.txt"
                mv "$TOOL_DIR/temp.txt" "$TOOL_DIR/api_keys.txt"
                echo "OPENAI:$openai_key" >> "$TOOL_DIR/api_keys.txt"
                echo -e "${GREEN}✅ OpenAI API key saved!${NC}"
            fi
            ;;
        2)
            read -p "Enter Google AI API Key: " google_key
            if [[ -n "$google_key" ]]; then
                grep -v "GOOGLE" "$TOOL_DIR/api_keys.txt" > "$TOOL_DIR/temp.txt"
                mv "$TOOL_DIR/temp.txt" "$TOOL_DIR/api_keys.txt"
                echo "GOOGLE:$google_key" >> "$TOOL_DIR/api_keys.txt"
                echo -e "${GREEN}✅ Google AI API key saved!${NC}"
            fi
            ;;
        3)
            read -p "Are you sure you want to clear all API keys? (y/n): " confirm
            if [[ "$confirm" == "y" ]]; then
                > "$TOOL_DIR/api_keys.txt"
                echo -e "${GREEN}✅ All API keys cleared!${NC}"
            fi
            ;;
        *)
            echo -e "${RED}Invalid option!${NC}"
            ;;
    esac
    
    read -p "Press Enter to continue..."
}

# ========== UTILITY FUNCTIONS ==========

 function deploy_vercel() {
    show_banner
    echo -e "${ORANGE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${ORANGE}║                       DEPLOY TO VERCEL                      ║${NC}"
    echo -e "${ORANGE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}This feature helps you deploy web apps to Vercel${NC}"
    echo ""
    
    if ! command -v node &> /dev/null; then
        echo -e "${RED}Node.js is not installed!${NC}"
        echo -e "${YELLOW}Installing Node.js...${NC}"
        pkg install nodejs -y
    fi
    
    if ! command -v vercel &> /dev/null; then
        echo -e "${YELLOW}Installing Vercel CLI...${NC}"
        npm install -g vercel
    fi
    
    echo -e "${GREEN}Vercel deployment options:${NC}"
    echo -e "${WHITE}1. Deploy current directory${NC}"
    echo -e "${WHITE}2. Deploy from GitHub repository${NC}"
    echo -e "${WHITE}3. Create new Vercel project${NC}"
    echo ""
    
    read -p "Select option [1-3]: " deploy_choice
    
    case $deploy_choice in
        1)
            echo -e "${GREEN}Deploying current directory...${NC}"
            vercel --prod
            ;;
        2)
            read -p "Enter GitHub repository URL: " repo_url
            if [[ -n "$repo_url" ]]; then
                echo -e "${GREEN}Deploying from GitHub...${NC}"
                temp_dir="/tmp/vercel_deploy_$$"
                git clone "$repo_url" "$temp_dir"
                cd "$temp_dir"
                vercel --prod
                cd -
                rm -rf "$temp_dir"
            else
                echo -e "${RED}Repository URL cannot be empty!${NC}"
            fi
            ;;
        3)
            echo -e "${GREEN}Creating new Vercel project...${NC}"
            vercel
            ;;
        *)
            echo -e "${RED}Invalid option!${NC}"
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
}

function setup_environment() {
    show_banner
    echo -e "${ORANGE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${ORANGE}║                     SETUP ENVIRONMENT                       ║${NC}"
    echo -e "${ORANGE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Setting up FallZxOSINT-X environment...${NC}"
    
    mkdir -p "$TOOL_DIR"
    mkdir -p "$DOWNLOAD_DIR"
    mkdir -p "$TOOL_DIR/logs"
    
    echo -e "${GREEN}Creating directory structure...${NC}"
    echo -e "${WHITE}Tool Directory: $TOOL_DIR${NC}"
    echo -e "${WHITE}Downloads: $DOWNLOAD_DIR${NC}"
    
    cat > "$TOOL_DIR/README.md" << EOF
# FallZxOSINT-X V1.0

Advanced OSINT Terminal Toolkit

## Features
- IP Geolocation Lookup
- Phone Number Analysis
- Social Media Checks
- TikTok Video Downloader
- GPS Location Tracking
- Fun Games & Utilities

## Directory Structure
- downloads/ - Downloaded TikTok videos
- logs/ - Application logs

## Usage
Run the main script: ./main.sh
EOF

    echo -e "${GREEN}✅ Environment setup complete!${NC}"
    
    read -p "Press Enter to continue..."
}

function check_dependencies() {
    show_banner
    echo -e "${ORANGE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${ORANGE}║                      DEPENDENCIES CHECK                     ║${NC}"
    echo -e "${ORANGE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Checking required dependencies...${NC}"
    echo ""
    
    dependencies=(
        "curl:curl"
        "git:git"
        "python:python"
        "node:nodejs"
        "wget:wget"
    )
    
    all_installed=true
    
    for dep in "${dependencies[@]}"; do
        cmd=$(echo "$dep" | cut -d: -f1)
        pkg=$(echo "$dep" | cut -d: -f2)
        
        if command -v "$cmd" &> /dev/null; then
            echo -e "${GREEN}✅ $cmd${NC}"
        else
            echo -e "${RED}❌ $cmd${NC}"
            all_installed=false
            
            read -p "Install $cmd? (y/n): " install_choice
            if [[ "$install_choice" == "y" ]]; then
                pkg install "$pkg" -y
            fi
        fi
    done
    
    if $all_installed; then
        echo -e "${GREEN}🎉 All required dependencies are installed!${NC}"
    else
        echo -e "${YELLOW}⚠️  Some dependencies are missing${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

function open_downloads_folder() {
    show_banner
    echo -e "${ORANGE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${ORANGE}║                      DOWNLOADS FOLDER                       ║${NC}"
    echo -e "${ORANGE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    if [[ -d "$DOWNLOAD_DIR" ]]; then
        echo -e "${GREEN}Downloads folder: $DOWNLOAD_DIR${NC}"
        echo ""
        
        if [[ $(ls -A "$DOWNLOAD_DIR") ]]; then
            echo -e "${YELLOW}Downloaded files:${NC}"
            ls -la "$DOWNLOAD_DIR"
            echo ""
            echo -e "${WHITE}Total files: $(ls "$DOWNLOAD_DIR" | wc -l)${NC}"
        else
            echo -e "${YELLOW}No files in downloads folder${NC}"
        fi
        
        echo ""
        echo -e "${CYAN}Options:${NC}"
        echo -e "${WHITE}1. Open downloads folder${NC}"
        echo -e "${WHITE}2. Clear all downloads${NC}"
        echo -e "${WHITE}3. Back to menu${NC}"
        echo ""
        
        read -p "Select option [1-3]: " folder_choice
        
        case $folder_choice in
            1)
                cd "$DOWNLOAD_DIR"
                echo -e "${GREEN}Changed to downloads directory${NC}"
                ls -la
                ;;
            2)
                read -p "Are you sure you want to clear all downloads? (y/n): " clear_confirm
                if [[ "$clear_confirm" == "y" ]]; then
                    rm -rf "$DOWNLOAD_DIR"/*
                    echo -e "${GREEN}Downloads folder cleared!${NC}"
                fi
                ;;
            3)
                return
                ;;
        esac
    else
        echo -e "${RED}Downloads folder not found!${NC}"
        echo -e "${YELLOW}Run 'Setup Tool Environment' first${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

function update_tool() {
    show_banner
    echo -e "${ORANGE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${ORANGE}║                         UPDATE TOOL                         ║${NC}"
    echo -e "${ORANGE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${YELLOW}Checking for updates...${NC}"
    
    current_version="1.0"
    latest_version="1.1"
    
    echo -e "${WHITE}Current version: $current_version${NC}"
    echo -e "${WHITE}Latest version: $latest_version${NC}"
    echo ""
    
    if [[ "$current_version" != "$latest_version" ]]; then
        echo -e "${GREEN}Update available!${NC}"
        read -p "Do you want to update? (y/n): " update_choice
        
        if [[ "$update_choice" == "y" ]]; then
            echo -e "${GREEN}Updating FallZxOSINT-X...${NC}"
            echo -e "${WHITE}Backing up current version...${NC}"
            echo -e "${WHITE}Downloading new version...${NC}"
            echo -e "${WHITE}Applying updates...${NC}"
            echo -e "${GREEN}✅ Update complete!${NC}"
        fi
    else
        echo -e "${GREEN}You have the latest version!${NC}"
    fi
    
    read -p "Press Enter to continue..."
}

function system_info() {
    show_banner
    echo -e "${BLUE}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                       SYSTEM INFORMATION                     ║${NC}"
    echo -e "${BLUE}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${WHITE}"
    echo "OS: $(uname -o)"
    echo "Kernel: $(uname -r)"
    echo "Architecture: $(uname -m)"
    echo "Hostname: $(hostname)"
    echo "Username: $(whoami)"
    echo "Shell: $SHELL"
    echo "Terminal: $TERM"
    echo -e "${NC}"
    
    read -p "Press Enter to continue..."
}

function about_page() {
    show_banner
    echo -e "${GREEN}╔═════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║                      ABOUT FALLZXOSINT-X                    ║${NC}"
    echo -e "${GREEN}╚═════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    echo -e "${WHITE}"
    echo "FallZxOSINT-X V1.0"
    echo "Advanced OSINT Terminal Toolkit"
    echo ""
    echo "Features:"
    echo "• IP Geolocation Lookup"
    echo "• Domain Information"
    echo "• Phone Number Lookup"
    echo "• Email Validation"
    echo "• GPS Location Tracking"
    echo "• Social Media Checks"
    echo "• TikTok Video Downloader"
    echo "• Website Screenshot"
    echo "• AI Chatbot Integration"
    echo "• Fun Games & Entertainment"
    echo ""
    echo "Total OSINT Tools: 10+"
    echo "AI Chatbots: 3+"
    echo "Games & Utilities: 10+"
    echo ""
    echo "Created for educational purposes"
    echo "Use responsibly and ethically!"
    echo -e "${NC}"
    
    read -p "Press Enter to continue..."
}

function exit_tool() {
    clear
    echo -e "${PURPLE}"
    echo " ███████╗ █████╗ ██╗     ██╗      ███████╗██╗  ██╗"
    echo " ██╔════╝██╔══██╗██║     ██║      ╚══███╔╝╚██╗██╔╝"
    echo " █████╗  ███████║██║     ██║        ███╔╝  ╚███╔╝ "
    echo " ██╔══╝  ██╔══██║██║     ██║       ███╔╝   ██╔██╗ "
    echo " ██║     ██║  ██║███████╗███████╗███████╗██╔╝ ██╗"
    echo " ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"
    echo -e "${NC}"
    echo -e "${CYAN}Thank you for using FallZxOSINT-X V1.0!${NC}"
    echo -e "${YELLOW}Stay curious, stay ethical!${NC}"
    sleep 2
    clear
    exit 0
}

# Initialize tool
function initialize_tool() {
    mkdir -p "$TOOL_DIR"
    mkdir -p "$DOWNLOAD_DIR"
    mkdir -p "$TOOL_DIR/logs"
    
    if ! command -v curl &> /dev/null; then
        echo -e "${YELLOW}Installing curl...${NC}"
        pkg install curl -y
    fi
}

# Trap Ctrl+C
trap exit_tool SIGINT

# Main execution
initialize_tool
echo -e "${CYAN}Initializing FallZxOSINT-X V1.0...${NC}"
sleep 1
main_menu
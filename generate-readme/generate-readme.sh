#!/bin/zsh

# Extract project title from folder name
project_title=$(basename $(pwd))
project_title=${project_title}

# Check if README.md already exists
if [ -f README.md ]; then
  read -p "A README.md file already exists. Do you want to replace it? (y/n): " replace
  if [[ $replace == "y" || $replace == "Y" ]]; then
    rm README.md
  else
    echo "Operation cancelled. Existing README.md was not replaced."
    exit 0
  fi
fi

# Create README.md file
touch README.md

# Add project title to README.md
echo "# $project_title" >> README.md

# Add table of contents
echo "\n## Table of Contents\n" >> README.md

# Add sections and their respective links
sections=("About" "Getting Started" "- Prerequisites" "- Installing" "Testing" "Usage" "Built Using" "Authors")

# Create section link and turn spaces into '-' to format link correctly
for section in "${sections[@]}"
do
  echo "- [$section](#$(echo $section | tr ' ' '-'))" >> README.md
done

# Add section contents
# About
echo "\n## About\n" >> README.md
echo "Write about 1-2 paragraphs describing the purpose of your project." >> README.md

# Getting Started
echo "\n## Getting Started\n" >> README.md
echo "These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.\n" >> README.md
echo "### Prerequisites\n" >> README.md
echo "What things you need to install the software and how to install them." >> README.md
echo "\n\`\`\`zsh\nGive examples\n\`\`\`\n" >> README.md


echo "### Installing\n" >> README.md
echo "A step by step series of examples that tell you how to get a development env running.\n" >> README.md
echo "Say what the step will be" >> README.md
echo "\n\`\`\`zsh\nGive examples\n\`\`\`\n" >> README.md
echo "Next step" >> README.md
echo "\n\`\`\`zsh\nNext step\n\`\`\`\n" >> README.md

# Testing
echo "## Testing\n" >> README.md
echo "Explain how to run the automated tests for this system.\n" >> README.md
echo "Explain what these tests test and why" >> README.md
echo "\n\`\`\`zsh\nGive examples\n\`\`\`\n" >> README.md

# Usage
echo "## Usage\n" >> README.md
echo "Add notes about how to use the system.\n" >> README.md

# Built Using
echo "## Built Using\n" >> README.md
echo "Change as needed\n" >> README.md
echo "- [MongoDB](https://www.mongodb.com/) - Database" >> README.md
echo "- [Express](https://expressjs.com/) - Server Framework" >> README.md
echo "- [VueJs](https://vuejs.org/) - Web Framework" >> README.md
echo "- [NodeJs](https://nodejs.org/en) - Server Environment" >> README.md


# Authors
echo "## Authors\n" >> README.md
echo "- [Oli Rooker](https://github.com/olirooker)\n" >> README.md

echo "\n\n---\n\n" >> README.md
echo "Template based on [The Documentation Compendium](https://github.com/kylelobo/The-Documentation-Compendium/blob/master/en/README_TEMPLATES/Standard.md).\n" >> README.md
echo "See their [Github page for best practice](https://github.com/kylelobo/The-Documentation-Compendium/tree/master#best_practices).\n" >> README.md

# Notify user
echo "README.md created successfully!"
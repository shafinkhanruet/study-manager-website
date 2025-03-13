# AI-Powered Study Manager Website

A feature-rich study management platform that helps students organize their learning journey with AI-powered recommendations, smart scheduling, and comprehensive progress tracking.

## Features

- 📅 Smart Study Planner with AI-based adaptive scheduling
- 📚 Subject & Topic Tracker with progress monitoring
- ⏳ Exam & Assignment Scheduler with reminders
- 📝 AI-powered Notes & Flashcards with spaced repetition
- 📊 Study Progress Analytics with interactive visualizations
- 🎨 Customizable UI with dark mode support
- 🔢 Formula & Equation Bank with LaTeX support
- 🧪 Lab Report & Assignment Manager

## Tech Stack

- **Frontend**: Next.js 14, React, TypeScript, Tailwind CSS
- **Backend**: Next.js API Routes
- **Database**: PostgreSQL with Prisma ORM
- **Authentication**: NextAuth.js
- **AI Integration**: OpenAI API
- **UI Components**: Headless UI, Hero Icons
- **Charts**: Recharts
- **Forms**: React Hook Form with Zod validation

## Prerequisites

- Node.js 18.x or later
- PostgreSQL database
- OpenAI API key

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/study-manager-website.git
   cd study-manager-website
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Set up environment variables:
   Create a `.env` file in the root directory with the following variables:
   ```
   DATABASE_URL="postgresql://user:password@localhost:5432/study_manager"
   NEXTAUTH_SECRET="your-secret-key"
   NEXTAUTH_URL="http://localhost:3000"
   OPENAI_API_KEY="your-openai-api-key"
   ```

4. Set up the database:
   ```bash
   npx prisma generate
   npx prisma db push
   ```

5. Run the development server:
   ```bash
   npm run dev
   ```

6. Open [http://localhost:3000](http://localhost:3000) in your browser.

## Project Structure

```
src/
├── app/                 # Next.js 14 app directory
│   ├── api/            # API routes
│   ├── auth/           # Authentication pages
│   └── dashboard/      # Main application pages
├── components/         # Reusable UI components
├── lib/               # Utility functions and configurations
├── hooks/             # Custom React hooks
├── types/             # TypeScript type definitions
└── styles/            # Global styles and Tailwind config
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Next.js](https://nextjs.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Prisma](https://www.prisma.io/)
- [OpenAI](https://openai.com/) 
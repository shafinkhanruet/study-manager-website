import { initializeApp, getApps } from 'firebase/app';
import { getAnalytics } from 'firebase/analytics';
import { getAuth } from 'firebase/auth';
import { getFirestore } from 'firebase/firestore';
import { getStorage } from 'firebase/storage';

const firebaseConfig = {
  apiKey: "AIzaSyAM8hiXDQc4c_mFnK7eXG4TN8cTm74Dedg",
  authDomain: "studymanagerwebsite.firebaseapp.com",
  projectId: "studymanagerwebsite",
  storageBucket: "studymanagerwebsite.firebasestorage.app",
  messagingSenderId: "652976336451",
  appId: "1:652976336451:web:1f96fc4cffe3e63f4deef6",
  measurementId: "G-WL2XKFQ5CQ"
};

// Initialize Firebase
const app = getApps().length === 0 ? initializeApp(firebaseConfig) : getApps()[0];

// Only initialize analytics on the client side and in production
const analytics = typeof window !== 'undefined' && process.env.NODE_ENV === 'production' 
  ? getAnalytics(app) 
  : null;

const auth = getAuth(app);
const db = getFirestore(app);
const storage = getStorage(app);

export { app, analytics, auth, db, storage }; 
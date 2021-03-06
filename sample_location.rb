#!/usr/bin/env ruby

def sample_location
  [{:lat=>43.3333, :lon=>-8.4166},
   {:lat=>42.7166, :lon=>-8.45},
   {:lat=>43.1333, :lon=>-7.45},
   {:lat=>41.5333, :lon=>-4.8666},
   {:lat=>36.7166, :lon=>-3.05},
   {:lat=>37.3833, :lon=>-1.5833},
   {:lat=>39.8, :lon=>4.2666},
   {:lat=>43.5166, :lon=>-3.5833},
   {:lat=>39.95, :lon=>4.1333},
   {:lat=>39.0, :lon=>-1.8333},
   {:lat=>39.9666, :lon=>-4.7666},
   {:lat=>40.4666, :lon=>-3.36666},
   {:lat=>37.45, :lon=>-3.95},
   {:lat=>41.0333, :lon=>-0.133333},
   {:lat=>39.7333, :lon=>-6.8333},
   {:lat=>37.9833, :lon=>-1.2},
   {:lat=>38.6666, :lon=>-2.3333},
   {:lat=>37.5833, :lon=>-4.0833},
   {:lat=>39.4, :lon=>-3.2},
   {:lat=>39.15, :lon=>-0.5},
   {:lat=>38.7166, :lon=>-0.5},
   {:lat=>39.85, :lon=>3.11666},
   {:lat=>39.7833, :lon=>3.25},
   {:lat=>39.7333, :lon=>2.73333},
   {:lat=>39.55, :lon=>2.88333},
   {:lat=>36.15, :lon=>-5.4666},
   {:lat=>39.1833, :lon=>-0.45},
   {:lat=>38.3833, :lon=>-0.5},
   {:lat=>38.8166, :lon=>-4.8666},
   {:lat=>38.85, :lon=>-1.08333},
   {:lat=>40.25, :lon=>-5.3},
   {:lat=>37.2333, :lon=>-1.76666},
   {:lat=>41.5, :lon=>-2.5},
   {:lat=>38.6833, :lon=>-6.4333},
   {:lat=>36.8666, :lon=>-2.45},
   {:lat=>42.9, :lon=>-2.1666},
   {:lat=>38.6333, :lon=>-0.033333},
   {:lat=>39.15, :lon=>-0.5},
   {:lat=>37.5833, :lon=>-5.0},
   {:lat=>37.5833, :lon=>-5.0},
   {:lat=>39.65, :lon=>2.4166},
   {:lat=>38.05, :lon=>-4.0833},
   {:lat=>42.6166, :lon=>0.66666},
   {:lat=>37.0833, :lon=>-4.55},
   {:lat=>37.8833, :lon=>-6.6333},
   {:lat=>41.4166, :lon=>-0.66666},
   {:lat=>42.2166, :lon=>-1.73333},
   {:lat=>41.65, :lon=>-3.7},
   {:lat=>40.0166, :lon=>-3.6666},
   {:lat=>36.75, :lon=>-5.8166},
   {:lat=>41.05, :lon=>-4.7166},
   {:lat=>40.3166, :lon=>-3.43333},
   {:lat=>42.05, :lon=>-4.2833},
   {:lat=>39.6833, :lon=>3.35},
   {:lat=>39.9166, :lon=>3.8166},
   {:lat=>42.4833, :lon=>-6.1333},
   {:lat=>43.25, :lon=>-6.0},
   {:lat=>39.0666, :lon=>1.36666},
   {:lat=>40.65, :lon=>-4.7166},
   {:lat=>43.5833, :lon=>-5.95},
   {:lat=>37.2, :lon=>-7.4},
   {:lat=>38.2666, :lon=>-5.65},
   {:lat=>38.8333, :lon=>-6.9833},
   {:lat=>41.4333, :lon=>2.25},
   {:lat=>37.6166, :lon=>-4.3333},
   {:lat=>37.95, :lon=>-3.4166},
   {:lat=>41.8333, :lon=>0.83333},
   {:lat=>39.5, :lon=>3.0},
   {:lat=>39.5, :lon=>3.0},
   {:lat=>39.7, :lon=>2.51666},
   {:lat=>43.3, :lon=>-2.98333},
   {:lat=>38.65, :lon=>1.4},
   {:lat=>42.0333, :lon=>0.083333},
   {:lat=>41.35, :lon=>2.1666},
   {:lat=>42.8333, :lon=>-2.75},
   {:lat=>37.5, :lon=>-2.7833},
   {:lat=>40.3833, :lon=>-5.7666},
   {:lat=>42.0333, :lon=>-5.7166},
   {:lat=>38.55, :lon=>-0.15},
   {:lat=>42.1, :lon=>1.8},
   {:lat=>36.8333, :lon=>-2.93333},
   {:lat=>43.25, :lon=>-8.2},
   {:lat=>43.2666, :lon=>-2.93333},
   {:lat=>43.2666, :lon=>-2.93333},
   {:lat=>39.8333, :lon=>4.1833},
   {:lat=>39.35, :lon=>2.85},
   {:lat=>41.6666, :lon=>2.8},
   {:lat=>42.35, :lon=>-3.68333},
   {:lat=>40.0833, :lon=>4.0833},
   {:lat=>37.5, :lon=>-4.4666},
   {:lat=>39.1333, :lon=>2.95},
   {:lat=>39.2333, :lon=>-1.05},
   {:lat=>39.4333, :lon=>-6.3833},
   {:lat=>36.5, :lon=>-6.3333},
   {:lat=>36.6666, :lon=>-7.0},
   {:lat=>39.3833, :lon=>3.23333},
   {:lat=>39.8666, :lon=>4.1333},
   {:lat=>39.45, :lon=>2.51666},
   {:lat=>40.0, :lon=>3.7833},
   {:lat=>39.55, :lon=>2.61666},
   {:lat=>39.9166, :lon=>4.2666},
   {:lat=>39.5833, :lon=>3.36666},
   {:lat=>39.7166, :lon=>3.45},
   {:lat=>39.9333, :lon=>3.9666},
   {:lat=>42.3, :lon=>-1.98333},
   {:lat=>40.8333, :lon=>-1.2833},
   {:lat=>41.3333, :lon=>-1.6666},
   {:lat=>39.4333, :lon=>3.01666},
   {:lat=>38.95, :lon=>1.45},
   {:lat=>38.9666, :lon=>1.4666},
   {:lat=>43.1666, :lon=>-6.5333},
   {:lat=>43.1666, :lon=>-4.0},
   {:lat=>43.0, :lon=>-5.1666},
   {:lat=>43.0, :lon=>-5.1666},
   {:lat=>38.1333, :lon=>-1.86666},
   {:lat=>38.1333, :lon=>-1.86666},
   {:lat=>43.2166, :lon=>-8.6833},
   {:lat=>37.4666, :lon=>-5.7},
   {:lat=>37.6333, :lon=>-0.98333},
   {:lat=>41.2333, :lon=>-0.0166666},
   {:lat=>39.9666, :lon=>-0.05},
   {:lat=>39.5, :lon=>-3.5},
   {:lat=>42.0, :lon=>-5.0},
   {:lat=>38.7166, :lon=>-5.6166},
   {:lat=>41.6666, :lon=>1.25},
   {:lat=>41.6666, :lon=>1.25},
   {:lat=>41.6666, :lon=>1.26666},
   {:lat=>42.6, :lon=>-7.7666},
   {:lat=>36.4333, :lon=>-6.15},
   {:lat=>38.2833, :lon=>-1.38333},
   {:lat=>39.3, :lon=>-4.8666},
   {:lat=>41.4333, :lon=>0.35},
   {:lat=>38.9833, :lon=>-3.9166},
   {:lat=>40.5833, :lon=>-6.3666},
   {:lat=>40.0, :lon=>3.8333},
   {:lat=>36.6666, :lon=>-4.8},
   {:lat=>39.9666, :lon=>4.2666},
   {:lat=>39.3166, :lon=>2.98333},
   {:lat=>39.8333, :lon=>0.83333},
   {:lat=>39.1833, :lon=>2.9666},
   {:lat=>39.1833, :lon=>2.9666},
   {:lat=>42.9333, :lon=>-9.2},
   {:lat=>37.8333, :lon=>-4.8333},
   {:lat=>39.9666, :lon=>-6.55},
   {:lat=>43.3333, :lon=>-8.4166},
   {:lat=>38.4166, :lon=>-0.166666},
   {:lat=>41.5, :lon=>3.0},
   {:lat=>36.5, :lon=>-4.5},
   {:lat=>41.2, :lon=>1.25},
   {:lat=>42.3333, :lon=>3.3166},
   {:lat=>40.0833, :lon=>-2.1666},
   {:lat=>39.9166, :lon=>-1.8333},
   {:lat=>37.3, :lon=>-1.9666},
   {:lat=>39.15, :lon=>-0.28333},
   {:lat=>38.9833, :lon=>1.2166},
   {:lat=>39.0666, :lon=>-3.61666},
   {:lat=>39.9166, :lon=>3.8166},
   {:lat=>42.25, :lon=>-3.0},
   {:lat=>38.8166, :lon=>0.133333},
   {:lat=>38.4, :lon=>-3.5},
   {:lat=>43.2833, :lon=>-1.9666},
   {:lat=>43.2833, :lon=>-1.9666},
   {:lat=>37.2666, :lon=>-5.9166},
   {:lat=>40.7166, :lon=>0.9},
   {:lat=>37.5, :lon=>-5.1666},
   {:lat=>43.1833, :lon=>-2.4666},
   {:lat=>38.9, :lon=>1.43333},
   {:lat=>40.5833, :lon=>-4.1166},
   {:lat=>43.4833, :lon=>-8.25},
   {:lat=>40.5, :lon=>-0.41666},
   {:lat=>41.3, :lon=>2.05},
   {:lat=>36.6, :lon=>-6.2166},
   {:lat=>38.25, :lon=>-0.7},
   {:lat=>38.4833, :lon=>-0.78333},
   {:lat=>38.25, :lon=>-0.7},
   {:lat=>39.1166, :lon=>2.9166},
   {:lat=>41.4333, :lon=>-4.75},
   {:lat=>38.6666, :lon=>1.5},
   {:lat=>39.0333, :lon=>1.6},
   {:lat=>39.9833, :lon=>4.0833},
   {:lat=>39.95, :lon=>4.05},
   {:lat=>38.8666, :lon=>1.2},
   {:lat=>41.4833, :lon=>-6.05},
   {:lat=>39.65, :lon=>2.48333},
   {:lat=>43.1666, :lon=>-4.8166},
   {:lat=>39.5, :lon=>-6.0833},
   {:lat=>38.8333, :lon=>1.38333},
   {:lat=>39.7833, :lon=>3.35},
   {:lat=>40.0, :lon=>4.25},
   {:lat=>39.4666, :lon=>3.15},
   {:lat=>39.9833, :lon=>4.0166},
   {:lat=>43.4833, :lon=>-8.25},
   {:lat=>39.7833, :lon=>3.35},
   {:lat=>42.3, :lon=>2.9666},
   {:lat=>42.8333, :lon=>-9.3166},
   {:lat=>42.8333, :lon=>-9.3166},
   {:lat=>43.1333, :lon=>-7.0666},
   {:lat=>38.7166, :lon=>1.45},
   {:lat=>39.9666, :lon=>3.2166},
   {:lat=>40.05, :lon=>4.1166},
   {:lat=>38.1666, :lon=>-6.65},
   {:lat=>36.5333, :lon=>-4.6833},
   {:lat=>40.55, :lon=>-6.8666},
   {:lat=>39.05, :lon=>1.5333},
   {:lat=>42.7166, :lon=>-7.75},
   {:lat=>41.65, :lon=>-0.85},
   {:lat=>38.9666, :lon=>-0.15},
   {:lat=>42.8333, :lon=>-2.68333},
   {:lat=>36.6833, :lon=>-2.2166},
   {:lat=>40.3333, :lon=>-6.75},
   {:lat=>37.7, :lon=>-5.3166},
   {:lat=>43.3166, :lon=>-2.6666},
   {:lat=>41.9666, :lon=>2.76666},
   {:lat=>40.3, :lon=>-3.73333},
   {:lat=>43.35, :lon=>-2.98333},
   {:lat=>43.5333, :lon=>-5.7},
   {:lat=>41.9666, :lon=>2.76666},
   {:lat=>43.3833, :lon=>-6.0666},
   {:lat=>37.1666, :lon=>-3.5833},
   {:lat=>41.65, :lon=>2.3},
   {:lat=>40.3333, :lon=>-5.0},
   {:lat=>39.1, :lon=>1.6},
   {:lat=>40.6166, :lon=>-3.2},
   {:lat=>36.5833, :lon=>-6.2166},
   {:lat=>36.7833, :lon=>-6.3666},
   {:lat=>39.4666, :lon=>-5.5},
   {:lat=>41.0, :lon=>-4.0},
   {:lat=>37.3, :lon=>-3.1833},
   {:lat=>43.35, :lon=>-2.98333},
   {:lat=>43.3166, :lon=>-2.6666},
   {:lat=>38.5166, :lon=>-1.6666},
   {:lat=>40.4, :lon=>-3.5},
   {:lat=>38.5, :lon=>-5.15},
   {:lat=>37.3, :lon=>-6.95},
   {:lat=>42.1333, :lon=>-0.41666},
   {:lat=>38.9, :lon=>1.43333},
   {:lat=>41.6166, :lon=>1.61666},
   {:lat=>39.5333, :lon=>2.4166},
   {:lat=>39.7166, :lon=>2.9},
   {:lat=>43.3333, :lon=>-1.86666},
   {:lat=>42.8, :lon=>-1.63333},
   {:lat=>42.5833, :lon=>-0.55},
   {:lat=>37.7333, :lon=>71.366},
   {:lat=>41.7833, :lon=>-1.06666},
   {:lat=>40.4, :lon=>-3.5333},
   {:lat=>38.9833, :lon=>-0.53333},
   {:lat=>38.3333, :lon=>-6.75},
   {:lat=>31.86666, :lon=>35.45},
   {:lat=>39.0833, :lon=>-0.166666},
   {:lat=>38.4666, :lon=>-1.31666},
   {:lat=>40.5166, :lon=>-2.75},
   {:lat=>38.85, :lon=>1.38333},
   {:lat=>43.3333, :lon=>-8.4166},
   {:lat=>42.7166, :lon=>-8.45},
   {:lat=>36.25, :lon=>-5.3833},
   {:lat=>39.1666, :lon=>-2.9},
   {:lat=>37.35, :lon=>-6.6333},
   {:lat=>42.3333, :lon=>-2.3333},
   {:lat=>42.8333, :lon=>-5.6833},
   {:lat=>39.3166, :lon=>-2.25},
   {:lat=>38.7333, :lon=>-1.41666},
   {:lat=>42.3666, :lon=>1.38333},
   {:lat=>39.8166, :lon=>-0.25},
   {:lat=>39.3333, :lon=>-0.45},
   {:lat=>42.6666, :lon=>-8.0833},
   {:lat=>43.3, :lon=>-5.6666},
   {:lat=>36.8833, :lon=>-6.0833},
   {:lat=>40.3166, :lon=>-3.75},
   {:lat=>42.6333, :lon=>-5.5666},
   {:lat=>42.5, :lon=>-6.3},
   {:lat=>41.6166, :lon=>0.65},
   {:lat=>41.35, :lon=>2.1},
   {:lat=>38.1666, :lon=>-3.6666},
   {:lat=>39.6166, :lon=>-0.58333},
   {:lat=>51.6833, :lon=>-4.1666},
   {:lat=>39.55, :lon=>2.3},
   {:lat=>71.616, :lon=>0.65},
   {:lat=>38.8666, :lon=>1.25},
   {:lat=>39.6166, :lon=>-0.58333},
   {:lat=>41.3166, :lon=>2.15},
   {:lat=>41.6833, :lon=>2.88333},
   {:lat=>42.4666, :lon=>-2.45},
   {:lat=>37.1666, :lon=>-4.1666},
   {:lat=>37.65, :lon=>-5.55},
   {:lat=>37.6833, :lon=>-1.7},
   {:lat=>43.5333, :lon=>-6.5333},
   {:lat=>37.45, :lon=>-4.5166},
   {:lat=>43.0333, :lon=>-7.5833},
   {:lat=>40.4166, :lon=>-3.75},
   {:lat=>39.8833, :lon=>4.2666},
   {:lat=>36.7166, :lon=>-4.3833},
   {:lat=>39.5, :lon=>3.0},
   {:lat=>39.5666, :lon=>3.2166},
   {:lat=>41.8, :lon=>1.8333},
   {:lat=>39.0333, :lon=>-3.36666},
   {:lat=>39.8833, :lon=>4.2666},
   {:lat=>36.5, :lon=>-4.95},
   {:lat=>37.3, :lon=>-5.3833},
   {:lat=>42.3833, :lon=>-8.7},
   {:lat=>37.7333, :lon=>-3.9666},
   {:lat=>39.8, :lon=>2.85},
   {:lat=>41.5333, :lon=>2.48333},
   {:lat=>37.6333, :lon=>-1.31666},
   {:lat=>41.3, :lon=>-4.9166},
   {:lat=>36.4666, :lon=>-5.95},
   {:lat=>40.0, :lon=>4.0},
   {:lat=>38.9166, :lon=>-6.4166},
   {:lat=>41.8666, :lon=>-8.6666},
   {:lat=>41.8666, :lon=>-8.6666},
   {:lat=>40.0, :lon=>4.0},
   {:lat=>42.6833, :lon=>-2.95},
   {:lat=>41.8, :lon=>-1.8333},
   {:lat=>42.5166, :lon=>-7.55},
   {:lat=>40.8333, :lon=>-0.75},
   {:lat=>37.6, :lon=>-4.6666},
   {:lat=>38.0166, :lon=>-4.45},
   {:lat=>39.5666, :lon=>2.98333},
   {:lat=>41.8666, :lon=>0.166666},
   {:lat=>40.5833, :lon=>-0.083333},
   {:lat=>38.3333, :lon=>-4.0},
   {:lat=>39.7333, :lon=>3.3333},
   {:lat=>37.1, :lon=>-5.4666},
   {:lat=>36.5166, :lon=>-3.61666},
   {:lat=>38.05, :lon=>-1.55},
   {:lat=>37.0666, :lon=>-3.3333},
   {:lat=>38.0833, :lon=>-1.16666},
   {:lat=>37.8333, :lon=>-1.5},
   {:lat=>39.7333, :lon=>3.05},
   {:lat=>38.7333, :lon=>0.233333},
   {:lat=>40.05, :lon=>3.8333},
   {:lat=>39.8666, :lon=>-5.55},
   {:lat=>42.6666, :lon=>-1.6666},
   {:lat=>39.5, :lon=>-3.5},
   {:lat=>39.9166, :lon=>-3.5},
   {:lat=>42.0, :lon=>-5.0},
   {:lat=>38.6833, :lon=>-7.15},
   {:lat=>42.1833, :lon=>2.5},
   {:lat=>42.3166, :lon=>-7.9166},
   {:lat=>39.65, :lon=>-3.88333},
   {:lat=>38.1166, :lon=>-0.91666},
   {:lat=>43.7166, :lon=>-7.8666},
   {:lat=>43.6666, :lon=>-7.8333},
   {:lat=>37.2333, :lon=>-5.1333},
   {:lat=>42.3166, :lon=>-7.9166},
   {:lat=>43.4166, :lon=>-5.8333},
   {:lat=>42.8333, :lon=>-2.75},
   {:lat=>42.9666, :lon=>-5.7666},
   {:lat=>42.0166, :lon=>-4.5666},
   {:lat=>39.5, :lon=>2.65},
   {:lat=>39.5833, :lon=>2.65},
   {:lat=>37.6333, :lon=>-0.66666},
   {:lat=>42.8, :lon=>-1.63333},
   {:lat=>40.2333, :lon=>-3.76666},
   {:lat=>38.7666, :lon=>1.43333},
   {:lat=>38.3166, :lon=>-5.2666},
   {:lat=>43.7, :lon=>-5.8666},
   {:lat=>42.6666, :lon=>0.083333},
   {:lat=>42.6666, :lon=>0.083333},
   {:lat=>39.6166, :lon=>3.1},
   {:lat=>41.55, :lon=>-4.8666},
   {:lat=>40.05, :lon=>-6.1333},
   {:lat=>39.9, :lon=>3.01666},
   {:lat=>39.8833, :lon=>3.13333},
   {:lat=>42.5333, :lon=>-6.5833},
   {:lat=>42.4333, :lon=>-8.6666},
   {:lat=>39.5166, :lon=>3.0333},
   {:lat=>39.8333, :lon=>3.11666},
   {:lat=>39.5333, :lon=>2.38333},
   {:lat=>39.8, :lon=>2.7},
   {:lat=>39.8, :lon=>2.7},
   {:lat=>42.4166, :lon=>3.15},
   {:lat=>39.55, :lon=>3.3333},
   {:lat=>39.3666, :lon=>3.2166},
   {:lat=>38.3833, :lon=>-4.85},
   {:lat=>43.5, :lon=>-6.2},
   {:lat=>37.3666, :lon=>-4.7833},
   {:lat=>39.8333, :lon=>3.11666},
   {:lat=>39.1333, :lon=>2.93333},
   {:lat=>39.8, :lon=>2.7},
   {:lat=>39.9, :lon=>3.0666},
   {:lat=>38.7166, :lon=>-4.1166},
   {:lat=>39.8, :lon=>2.7833},
   {:lat=>42.4, :lon=>1.8333},
   {:lat=>39.6333, :lon=>2.5333},
   {:lat=>39.8, :lon=>4.2666},
   {:lat=>39.6, :lon=>-3.0833},
   {:lat=>42.25, :lon=>-8.6333},
   {:lat=>43.0333, :lon=>-4.25},
   {:lat=>43.3166, :lon=>-1.9},
   {:lat=>39.5, :lon=>-1.06666},
   {:lat=>41.1666, :lon=>1.08333},
   {:lat=>43.5833, :lon=>-7.0833},
   {:lat=>36.7666, :lon=>-5.2},
   {:lat=>36.7666, :lon=>-2.6},
   {:lat=>42.1666, :lon=>3.25},
   {:lat=>38.85, :lon=>1.38333},
   {:lat=>38.9833, :lon=>1.2166},
   {:lat=>39.9166, :lon=>2.3166},
   {:lat=>39.9166, :lon=>4.2666},
   {:lat=>38.7333, :lon=>1.41666},
   {:lat=>42.3, :lon=>-5.0333},
   {:lat=>39.2666, :lon=>3.0666},
   {:lat=>39.2666, :lon=>3.0666},
   {:lat=>39.05, :lon=>1.56666},
   {:lat=>39.0833, :lon=>1.51666},
   {:lat=>39.05, :lon=>1.38333},
   {:lat=>39.05, :lon=>1.43333},
   {:lat=>36.2833, :lon=>-5.35},
   {:lat=>39.45, :lon=>3.1833},
   {:lat=>39.7166, :lon=>3.2166},
   {:lat=>39.5833, :lon=>2.35},
   {:lat=>38.9833, :lon=>1.31666},
   {:lat=>39.05, :lon=>1.56666},
   {:lat=>41.75, :lon=>3.01666},
   {:lat=>38.7, :lon=>1.4666},
   {:lat=>38.7, :lon=>1.43333},
   {:lat=>39.9, :lon=>4.0666},
   {:lat=>39.0833, :lon=>1.51666},
   {:lat=>39.55, :lon=>2.76666},
   {:lat=>39.6166, :lon=>3.2833},
   {:lat=>39.05, :lon=>1.38333},
   {:lat=>39.5833, :lon=>2.35},
   {:lat=>39.05, :lon=>1.35},
   {:lat=>41.45, :lon=>2.2166},
   {:lat=>39.0, :lon=>1.43333},
   {:lat=>39.7, :lon=>3.1},
   {:lat=>43.45, :lon=>-3.85},
   {:lat=>39.3333, :lon=>3.0833},
   {:lat=>42.8666, :lon=>-8.6166},
   {:lat=>43.4833, :lon=>-3.45},
   {:lat=>41.65, :lon=>-0.88333},
   {:lat=>39.5, :lon=>2.75},
   {:lat=>40.95, :lon=>-4.1666},
   {:lat=>41.6666, :lon=>0.71666},
   {:lat=>38.05, :lon=>-0.73333},
   {:lat=>39.35, :lon=>3.05},
   {:lat=>38.7833, :lon=>1.43333},
   {:lat=>38.8, :lon=>1.48333},
   {:lat=>39.3666, :lon=>2.9},
   {:lat=>37.3833, :lon=>-5.9666},
   {:lat=>37.3833, :lon=>-5.9666},
   {:lat=>42.45, :lon=>-7.7166},
   {:lat=>39.6333, :lon=>3.01666},
   {:lat=>41.2833, :lon=>1.7833},
   {:lat=>41.0666, :lon=>-3.5833},
   {:lat=>42.8, :lon=>-0.51666},
   {:lat=>41.7166, :lon=>-2.5333},
   {:lat=>42.5, :lon=>-1.68333},
   {:lat=>39.0333, :lon=>1.65},
   {:lat=>39.9166, :lon=>-4.7666},
   {:lat=>39.9166, :lon=>3.8166},
   {:lat=>41.0833, :lon=>1.2833},
   {:lat=>42.0333, :lon=>3.2},
   {:lat=>40.3666, :lon=>-1.13333},
   {:lat=>39.8333, :lon=>-6.0166},
   {:lat=>41.3, :lon=>-6.4833},
   {:lat=>39.9833, :lon=>4.1333},
   {:lat=>40.45, :lon=>-3.48333},
   {:lat=>36.6333, :lon=>-4.5},
   {:lat=>36.6333, :lon=>-4.5},
   {:lat=>39.45, :lon=>-0.46666},
   {:lat=>40.8166, :lon=>0.51666},
   {:lat=>43.05, :lon=>-9.3},
   {:lat=>36.1666, :lon=>-6.0333},
   {:lat=>42.1666, :lon=>0.86666},
   {:lat=>42.0666, :lon=>-1.6},
   {:lat=>42.05, :lon=>-8.65},
   {:lat=>39.45, :lon=>0.31666},
   {:lat=>42.05, :lon=>-8.65},
   {:lat=>38.05, :lon=>-3.38333},
   {:lat=>37.2, :lon=>-5.8},
   {:lat=>38.7166, :lon=>-3.4166},
   {:lat=>39.3333, :lon=>-0.66666},
   {:lat=>39.5, :lon=>0.33333},
   {:lat=>39.4166, :lon=>-7.2333},
   {:lat=>41.6333, :lon=>-4.7166},
   {:lat=>39.7166, :lon=>2.61666},
   {:lat=>41.3, :lon=>1.25},
   {:lat=>37.5833, :lon=>-6.7833},
   {:lat=>36.25, :lon=>-5.9833},
   {:lat=>36.8, :lon=>-4.0833},
   {:lat=>37.25, :lon=>-1.85},
   {:lat=>41.95, :lon=>-7.45},
   {:lat=>41.9666, :lon=>2.3166},
   {:lat=>41.9666, :lon=>2.3166},
   {:lat=>42.2, :lon=>-8.6833},
   {:lat=>39.9166, :lon=>-0.05},
   {:lat=>42.5666, :lon=>-8.7666},
   {:lat=>41.2166, :lon=>1.6666},
   {:lat=>39.8833, :lon=>4.2833},
   {:lat=>38.1166, :lon=>-3.05},
   {:lat=>39.5666, :lon=>3.4166},
   {:lat=>38.5, :lon=>-0.2},
   {:lat=>43.4333, :lon=>-7.6666},
   {:lat=>38.9833, :lon=>-5.8333},
   {:lat=>39.9166, :lon=>-0.05},
   {:lat=>39.3, :lon=>-2.6},
   {:lat=>43.5333, :lon=>-5.45},
   {:lat=>38.65, :lon=>-0.86666},
   {:lat=>40.5, :lon=>0.45},
   {:lat=>41.0166, :lon=>-6.4333},
   {:lat=>43.65, :lon=>-7.6333},
   {:lat=>39.0833, :lon=>-0.166666},
   {:lat=>38.5833, :lon=>-1.08333},
   {:lat=>38.4333, :lon=>-6.5},
   {:lat=>38.4333, :lon=>6.5},
   {:lat=>41.5, :lon=>-5.75},
   {:lat=>41.65, :lon=>-0.8833}].sample
end

const express = require('express');
const path = require('path');


const app = express();
const PORT = process.env.PORT || 8080;


// Serve the Flutter build/web output
const webDir = path.join(__dirname, '..', 'build', 'web');
app.use(express.static(webDir));


// Send index.html for any other route (client-side routing fallback)
app.get('*', (req, res) => {
res.sendFile(path.join(webDir, 'index.html'));
});


app.listen(PORT, () => {
console.log(`Server running on http://localhost:${PORT}`);
});
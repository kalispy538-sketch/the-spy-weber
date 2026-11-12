# The Spy Weber — GitHub Pages package

## Files
- `index.html` — public website (existing supplied design retained)
- `admin/index.html` — separate admin login and video manager
- `setup.sql` — creates the video table and access policies

## One-time Supabase setup
1. Open your existing Supabase project: `inaazsmabgptpjckugwn`.
2. Open **SQL Editor** → **New query**.
3. Open `setup.sql`, copy all SQL, paste it in the editor, and click **Run**.
4. In Supabase Authentication settings, disable public sign-ups. Keep your existing admin login only.

## GitHub Pages deployment
1. Open the GitHub repository you want to publish (or create `the-spy-weber`).
2. Upload the files while preserving the folder structure:
   - `index.html` in repository root
   - `admin/index.html` inside an `admin` folder
   - `setup.sql` in repository root
3. Commit changes.
4. Open **Settings → Pages → Build and deployment**.
5. Choose **Deploy from a branch**, branch **main**, folder **/(root)**, then **Save**.

## Website addresses
- Public site: `https://YOUR-GITHUB-USERNAME.github.io/REPOSITORY-NAME/`
- Admin: `https://YOUR-GITHUB-USERNAME.github.io/REPOSITORY-NAME/admin/`

Use the email/password of your existing Supabase admin account on the admin page.

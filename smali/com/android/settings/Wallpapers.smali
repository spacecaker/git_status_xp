.class public Lcom/android/settings/Wallpapers;
.super Landroid/preference/PreferenceActivity;
.source "Wallpapers.java"


# instance fields
.field mHomeScreenWallpaper:Landroid/preference/Preference;

.field mLockScreenWallpaper:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/android/settings/Wallpapers;->addPreferencesFromResource(I)V

    .line 41
    const-string v0, "homescreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings/Wallpapers;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Wallpapers;->mHomeScreenWallpaper:Landroid/preference/Preference;

    .line 42
    const-string v0, "lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings/Wallpapers;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Wallpapers;->mLockScreenWallpaper:Landroid/preference/Preference;

    .line 43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/android/settings/Wallpapers;->mHomeScreenWallpaper:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v1, 0x7f08049d

    invoke-virtual {p0, v1}, Lcom/android/settings/Wallpapers;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/Wallpapers;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 55
    .end local v0           #pickWallpaper:Landroid/content/Intent;
    :goto_0
    return v1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Wallpapers;->mLockScreenWallpaper:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

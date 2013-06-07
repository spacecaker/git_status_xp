.class public Lcom/android/settings/LockScreenWallpaper;
.super Landroid/preference/PreferenceActivity;
.source "LockScreenWallpaper.java"


# instance fields
.field mGallery:Landroid/preference/Preference;

.field mNone:Landroid/preference/Preference;


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
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->addPreferencesFromResource(I)V

    .line 41
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mNone:Landroid/preference/Preference;

    .line 42
    const-string v0, "gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    .line 43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mNone:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isChanged"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->finish()V

    .line 59
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.cooliris.media"

    const-string v2, "com.cooliris.media.LockScreenPhotographs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 57
    goto :goto_0
.end method

.class public Lcom/android/settings/ScreenDisplay;
.super Landroid/preference/PreferenceActivity;
.source "ScreenDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mClockPosition:Landroid/preference/ListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clock_position"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "GT-S5830i"

    .line 53
    const-string v2, "ScreenDisplay"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 58
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v6

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    .local v0, isLandBase:Ljava/lang/Boolean;
    const-string v2, "GT-S5830i"

    const-string v2, "GT-B5510"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 73
    const v2, 0x7f040034

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->addPreferencesFromResource(I)V

    .line 77
    :goto_2
    const-string v2, "clock_position"

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    .line 78
    iget-object v2, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v2, "homescreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 81
    const-string v2, "lockscreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 83
    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    return-void

    .end local v0           #isLandBase:Ljava/lang/Boolean;
    :cond_1
    move v2, v4

    .line 58
    goto :goto_0

    .line 62
    .restart local v0       #isLandBase:Ljava/lang/Boolean;
    :cond_2
    const-string v2, "GT-S5830i"

    const-string v2, "GT-S5830"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 64
    :cond_3
    const-string v2, "GT-S5830i"

    const-string v2, "GT-S5360"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 66
    :cond_4
    const-string v2, "GT-S5830i"

    const-string v2, "GT-S5570"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_5
    const-string v2, "GT-S5830i"

    const-string v2, "GT-S5369"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_6
    const v2, 0x7f040035

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenDisplay;->addPreferencesFromResource(I)V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "clock_position"

    .line 129
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, key:Ljava/lang/String;
    const-string v3, "clock_position"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clock_position"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 138
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 139
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "ScreenDisplay"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v1, 0x7f08049d

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 125
    .end local v0           #pickWallpaper:Landroid/content/Intent;
    :goto_0
    return v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/ScreenDisplay;->updateState()V

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 96
    return-void
.end method

.class public Lcom/lidroid/parts/GestureMenuActivity;
.super Landroid/preference/PreferenceActivity;
.source "GestureMenuActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOCKSCREEN_GESTURES_COLOR:Ljava/lang/String; = "lockscreen_gestures_color"

.field private static final LOCKSCREEN_GESTURES_ENABLE:Ljava/lang/String; = "lockscreen_gestures_enable"

.field private static final LOCKSCREEN_GESTURES_SENSITIVITY:Ljava/lang/String; = "lockscreen_gestures_sensitivity"

.field private static final LOCKSCREEN_GESTURES_TRAIL:Ljava/lang/String; = "lockscreen_gestures_trail"

.field private static final TAG:Ljava/lang/String; = "Gestures"


# instance fields
.field private mGesturesColor:Landroid/preference/Preference;

.field mGesturesColorListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

.field private mGesturesEnable:Landroid/preference/CheckBoxPreference;

.field private mGesturesSensitivity:Landroid/preference/ListPreference;

.field private mGesturesTrail:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 144
    new-instance v0, Lcom/lidroid/parts/GestureMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/GestureMenuActivity$1;-><init>(Lcom/lidroid/parts/GestureMenuActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColorListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/parts/GestureMenuActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;

    return-object v0
.end method

.method private getGestureColor()I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_gestures_color"

    const/16 v2, -0x100

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 54
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 76
    :goto_0
    return v7

    .line 58
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 62
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 64
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 66
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 68
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move v7, v8

    .line 71
    goto :goto_0

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 76
    goto :goto_0
.end method

.method private updateToggles()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreen_gestures_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesTrail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_gestures_trail"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_gestures_sensitivity"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getGestureColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 98
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/lidroid/parts/GestureMenuActivity;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 84
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "lockscreen_gestures_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesEnable:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v2, "lockscreen_gestures_trail"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesTrail:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v2, "lockscreen_gestures_sensitivity"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    .line 87
    const-string v2, "lockscreen_gestures_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;

    .line 89
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 90
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    iget-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getGestureColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColor:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 115
    new-instance v0, Lcom/lidroid/parts/ColorPickerDialog;

    iget-object v1, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesColorListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    invoke-direct {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getGestureColor()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lidroid/parts/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;I)V

    .line 116
    .local v0, cp:Lcom/lidroid/parts/ColorPickerDialog;
    invoke-virtual {v0}, Lcom/lidroid/parts/ColorPickerDialog;->show()V

    .line 117
    const/4 v1, 0x1

    .line 119
    .end local v0           #cp:Lcom/lidroid/parts/ColorPickerDialog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/lidroid/parts/GestureMenuActivity;->updateToggles()V

    .line 158
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    const-string v2, "lockscreen_gestures_enable"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_gestures_enabled"

    iget-object v4, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "lockscreen_gestures_trail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_gestures_trail"

    iget-object v4, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesTrail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 131
    :cond_4
    const-string v0, "lockscreen_gestures_sensitivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/lidroid/parts/GestureMenuActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_gestures_sensitivity"

    iget-object v2, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iget-object v0, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lidroid/parts/GestureMenuActivity;->mGesturesSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

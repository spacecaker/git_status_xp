.class public Lcom/lidroid/parts/LockScreenActivity;
.super Lcom/lidroid/parts/RevampedPreferenceActivity;
.source "LockScreenActivity.java"


# static fields
.field private static final REQUEST_CREATE_SHORTCUT:I = 0x3

.field private static final REQUEST_PICK_APPLICATION:I = 0x2

.field private static final REQUEST_PICK_SHORTCUT:I = 0x1


# instance fields
.field private customAppToggleListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private customIconListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private hideTabListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mCustomAppActivityPref:Landroid/preference/Preference;

.field private mDragDownUnlockPref:Landroid/preference/CheckBoxPreference;

.field private mKeyNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;-><init>()V

    .line 100
    new-instance v0, Lcom/lidroid/parts/LockScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/LockScreenActivity$1;-><init>(Lcom/lidroid/parts/LockScreenActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->customAppToggleListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 116
    new-instance v0, Lcom/lidroid/parts/LockScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/LockScreenActivity$2;-><init>(Lcom/lidroid/parts/LockScreenActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->customIconListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 133
    new-instance v0, Lcom/lidroid/parts/LockScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/LockScreenActivity$3;-><init>(Lcom/lidroid/parts/LockScreenActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->hideTabListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/parts/LockScreenActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lidroid/parts/LockScreenActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->mDragDownUnlockPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private pickShortcut(I)V
    .locals 7
    .parameter "keyNumber"

    .prologue
    .line 156
    iput p1, p0, Lcom/lidroid/parts/LockScreenActivity;->mKeyNumber:I

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/lidroid/parts/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020001

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/lidroid/parts/LockScreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/lidroid/parts/LockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    const-string v4, "lockscreen_custom_app_toggle"

    invoke-virtual {p0, v4}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 67
    .local v2, starterPref:Landroid/preference/CheckBoxPreference;
    const-string v4, "lockscreen_rotary_hide_arrows"

    invoke-virtual {p0, v4}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 68
    .local v1, hideArrowPref:Landroid/preference/Preference;
    const-string v4, "lockscreen_rotary_unlock_down"

    invoke-virtual {p0, v4}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 70
    .local v0, dragDownPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_style_pref"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 71
    .local v3, style:I
    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 74
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 80
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 87
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method completeSetCustomApp(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 215
    iget v0, p0, Lcom/lidroid/parts/LockScreenActivity;->mKeyNumber:I

    .line 216
    .local v0, keyNumber:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_custom_app_activity"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method

.method completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 204
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 205
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/lidroid/parts/LockScreenActivity;->mKeyNumber:I

    .line 206
    .local v1, keyNumber:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_custom_app_activity"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 173
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/lidroid/parts/LockScreenActivity;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/lidroid/parts/LockScreenActivity;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :pswitch_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/lidroid/parts/LockScreenActivity;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/LockScreenActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->sharedPreference:Landroid/content/SharedPreferences;

    .line 41
    const-string v0, "lockscreen_rotary_unlock_down"

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->mDragDownUnlockPref:Landroid/preference/CheckBoxPreference;

    .line 42
    const-string v0, "lockscreen_custom_app_activity"

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;

    .line 43
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->customAppToggleListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/lidroid/parts/LockScreenActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->hideTabListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lockscreen_custom_app_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/lidroid/parts/LockScreenActivity;->pickShortcut(I)V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-super {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onResume()V

    .line 48
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity;->hideTabListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity;->customAppToggleListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_custom_app_activity"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    const-string v1, "lockscreen_gestures_disable_unlock"

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 55
    .local v0, pref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "menu_unlock_screen"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_gestures_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 57
    :cond_0
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/lidroid/parts/LockScreenActivity;->updateState()V

    .line 62
    return-void

    .line 59
    :cond_1
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .locals 6
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lidroid/parts/LockScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v2, p2}, Lcom/lidroid/parts/LockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/lidroid/parts/LockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

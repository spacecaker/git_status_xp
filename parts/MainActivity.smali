.class public Lcom/lidroid/parts/MainActivity;
.super Lcom/lidroid/parts/RevampedPreferenceActivity;
.source "MainActivity.java"


# instance fields
.field private fontListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private lockScreenListenser:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private transAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private uiListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private windowAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;-><init>()V

    .line 29
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 30
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->mCurConfig:Landroid/content/res/Configuration;

    .line 65
    new-instance v0, Lcom/lidroid/parts/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/MainActivity$1;-><init>(Lcom/lidroid/parts/MainActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->lockScreenListenser:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 82
    new-instance v0, Lcom/lidroid/parts/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/MainActivity$2;-><init>(Lcom/lidroid/parts/MainActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->windowAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 99
    new-instance v0, Lcom/lidroid/parts/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/MainActivity$3;-><init>(Lcom/lidroid/parts/MainActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->transAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 116
    new-instance v0, Lcom/lidroid/parts/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/MainActivity$4;-><init>(Lcom/lidroid/parts/MainActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->fontListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 131
    new-instance v0, Lcom/lidroid/parts/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/MainActivity$5;-><init>(Lcom/lidroid/parts/MainActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/MainActivity;->uiListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/parts/MainActivity;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lidroid/parts/MainActivity;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->mCurConfig:Landroid/content/res/Configuration;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/MainActivity;->addPreferencesFromResource(I)V

    .line 37
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    .line 38
    const-string v1, "lockscreen_style_pref"

    invoke-virtual {p0, v1}, Lcom/lidroid/parts/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 39
    .local v0, lockScreenPref:Landroid/preference/ListPreference;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "lidroid-sgs-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "lidroid-m110s-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 41
    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->lockScreenListenser:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->windowAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->transAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->fontListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->uiListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/lidroid/parts/RevampedPreferenceActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->lockScreenListenser:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->windowAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->transAnimationListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->fontListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/lidroid/parts/MainActivity;->sharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lidroid/parts/MainActivity;->uiListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    return-void
.end method

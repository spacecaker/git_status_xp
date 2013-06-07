.class public Lcom/android/settings/PersonalSettings;
.super Landroid/preference/PreferenceActivity;
.source "PersonalSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/android/settings/PersonalSettings;->addPreferencesFromResource(I)V

    .line 21
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 24
    const v0, 0x7f030057

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 25
    return-void
.end method

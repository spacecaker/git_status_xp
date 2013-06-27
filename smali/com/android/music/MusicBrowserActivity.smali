.class public Lcom/android/music/MusicBrowserActivity;
.super Landroid/app/Activity;
.source "MusicBrowserActivity.java"


# instance fields
.field private autoshuffle:Landroid/content/ServiceConnection;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$1;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f0c0023

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v2, "activetab"

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, activeTab:I
    if-eq v0, v3, :cond_0

    const v2, 0x7f0c0024

    if-eq v0, v2, :cond_0

    const v2, 0x7f0c0025

    if-eq v0, v2, :cond_0

    const v2, 0x7f0c0026

    if-eq v0, v2, :cond_0

    .line 48
    const v0, 0x7f0c0023

    .line 50
    :cond_0
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "autoshuffle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, shuf:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 56
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    return-void
.end method

.class public Lcom/sec/android/app/music/DrmPopupActivity;
.super Landroid/app/Activity;
.source "DrmPopupActivity.java"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/music/DrmPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/music/DrmPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 41
    new-instance v1, Lcom/sec/android/app/music/DrmPopupData;

    invoke-direct {v1}, Lcom/sec/android/app/music/DrmPopupData;-><init>()V

    .line 43
    .local v1, popupData:Lcom/sec/android/app/music/DrmPopupData;
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/DrmPopupData;->popupStrings:[I

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.remain.counts"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.from"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/music/DrmPopupData;->popupFrom:I

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/music/DrmPopupActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "popup.position"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/music/DrmPopupData;->position:I

    .line 61
    new-instance v0, Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/DrmPopupData;)V

    .line 63
    .local v0, popup:Lcom/sec/android/app/music/DrmServicePopup;
    invoke-virtual {v0}, Lcom/sec/android/app/music/DrmServicePopup;->show()V

    .line 68
    .end local v0           #popup:Lcom/sec/android/app/music/DrmServicePopup;
    .end local v1           #popupData:Lcom/sec/android/app/music/DrmPopupData;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

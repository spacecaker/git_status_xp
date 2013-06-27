.class public Lcom/android/music/DeleteItems;
.super Landroid/app/Activity;
.source "DeleteItems.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mItemList:[J

.field private mPrompt:Landroid/widget/TextView;

.field private mScanListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    new-instance v0, Lcom/android/music/DeleteItems$2;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$2;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/android/music/DeleteItems$3;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$3;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/DeleteItems;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->setVolumeControlStream(I)V

    .line 46
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->requestWindowFeature(I)Z

    .line 47
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 51
    const v3, 0x7f0c0029

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    .line 52
    const v3, 0x7f0c002a

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    .line 53
    iget-object v3, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v3, 0x7f0c002b

    invoke-virtual {p0, v3}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/music/DeleteItems$1;

    invoke-direct {v4, p0}, Lcom/android/music/DeleteItems$1;-><init>(Lcom/android/music/DeleteItems;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, desc:Ljava/lang/String;
    const-string v3, "items"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    .line 65
    iget-object v3, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v2, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/music/DeleteItems;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

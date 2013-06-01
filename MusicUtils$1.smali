.class final Lcom/android/music/MusicUtils$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ll:Landroid/widget/TabWidget;


# direct methods
.method constructor <init>(Landroid/widget/TabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1294
    if-eqz p2, :cond_0

    .line 1295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1297
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1299
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->playSoundEffect(I)V

    .line 1301
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    sget v3, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/music/MusicUtils;->processTabClick(Landroid/app/Activity;Landroid/view/View;I)V

    .line 1306
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1295
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

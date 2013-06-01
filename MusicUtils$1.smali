.class Lcom/android/music/MusicUtils$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ll:Landroid/widget/TabWidget;


# direct methods
.method constructor <init>(Landroid/widget/TabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1159
    if-eqz p2, :cond_0

    .line 1160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1168
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1161
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/android/music/MusicUtils$1;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 1163
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

    goto :goto_1

    .line 1160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

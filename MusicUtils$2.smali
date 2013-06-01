.class Lcom/android/music/MusicUtils$2;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/music/MusicUtils$2;->val$ll:Landroid/widget/TabWidget;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/music/MusicUtils$2;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/music/MusicUtils$2;->val$ll:Landroid/widget/TabWidget;

    sget v2, Lcom/android/music/MusicUtils;->sActiveTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/music/MusicUtils;->processTabClick(Landroid/app/Activity;Landroid/view/View;I)V

    .line 1174
    return-void
.end method

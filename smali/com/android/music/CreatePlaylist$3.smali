.class Lcom/android/music/CreatePlaylist$3;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/CreatePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/music/CreatePlaylist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$3;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 135
    return-void
.end method

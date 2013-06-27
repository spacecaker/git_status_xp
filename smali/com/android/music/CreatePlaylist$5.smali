.class Lcom/android/music/CreatePlaylist$5;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/CreatePlaylist;
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
    .line 172
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 192
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 175
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #calls: Lcom/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v1, v0}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

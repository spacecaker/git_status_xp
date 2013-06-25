.class Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 12
    .parameter "htmlFragment"
    .parameter "dataType"

    .prologue
    const/4 v11, 0x1

    const-string v10, "####################### htmlFragment :"

    const-string v9, "HtmlComposerView"

    .line 811
    const-string v7, "HtmlComposerView"

    const-string v7, "SelectionUIPasteListener onPaste"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v7, 0x3

    if-ne p2, v7, :cond_2

    .line 817
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 819
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const-string v7, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 823
    .local v2, imageUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, absoluteFilePath:Ljava/lang/String;
    const-string v7, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 831
    const-string v7, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 835
    const-string v7, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 839
    .local v5, originWidth:I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 841
    .local v4, originHeight:I
    iget-object v7, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mViewWidth:I
    invoke-static {v7}, Landroid/webkit/HtmlComposerView;->access$100(Landroid/webkit/HtmlComposerView;)I

    move-result v6

    .line 843
    .local v6, width:I
    mul-int v7, v4, v6

    div-int v1, v7, v5

    .line 846
    .local v1, height:I
    if-eqz v6, :cond_1

    .line 850
    if-le v6, v5, :cond_0

    .line 854
    move v6, v5

    .line 856
    move v1, v4

    .line 862
    :cond_0
    iget-object v7, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7, p1, v6, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    .line 886
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    .end local v1           #height:I
    .end local v2           #imageUri:Landroid/net/Uri;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #originHeight:I
    .end local v5           #originWidth:I
    .end local v6           #width:I
    :goto_0
    iget-object v7, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7, v11}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 888
    return-void

    .line 870
    .restart local v0       #absoluteFilePath:Ljava/lang/String;
    .restart local v1       #height:I
    .restart local v2       #imageUri:Landroid/net/Uri;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #originHeight:I
    .restart local v5       #originWidth:I
    .restart local v6       #width:I
    :cond_1
    iget-object v7, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7, p1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    .end local v1           #height:I
    .end local v2           #imageUri:Landroid/net/Uri;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #originHeight:I
    .end local v5           #originWidth:I
    .end local v6           #width:I
    :cond_2
    iget-object v7, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    sget-object v8, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v7, p1, v8}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_0
.end method

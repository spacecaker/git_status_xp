.class Lcom/lidroid/parts/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/ColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lidroid/parts/ColorPickerDialog$3;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 367
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 370
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, s2:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$3;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #calls: Lcom/lidroid/parts/ColorPickerDialog;->convertToColorInt(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/lidroid/parts/ColorPickerDialog;->access$400(Lcom/lidroid/parts/ColorPickerDialog;Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, color:I
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$3;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;
    invoke-static {v2}, Lcom/lidroid/parts/ColorPickerDialog;->access$300(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->setCenterColor(I)V

    .line 378
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$3;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/lidroid/parts/ColorPickerDialog;->access$500(Lcom/lidroid/parts/ColorPickerDialog;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0           #color:I
    .end local v1           #s2:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v2

    goto :goto_0
.end method

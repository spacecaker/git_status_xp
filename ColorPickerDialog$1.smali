.class Lcom/lidroid/parts/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;


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
    .line 341
    iput-object p1, p0, Lcom/lidroid/parts/ColorPickerDialog$1;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$1;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v0}, Lcom/lidroid/parts/ColorPickerDialog;->access$200(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 344
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$1;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/lidroid/parts/ColorPickerDialog;->dismiss()V

    .line 345
    return-void
.end method

.method public colorUpdate(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$1;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v0}, Lcom/lidroid/parts/ColorPickerDialog;->access$200(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;->colorUpdate(I)V

    .line 348
    return-void
.end method

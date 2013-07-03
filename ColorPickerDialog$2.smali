.class Lcom/lidroid/parts/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 351
    iput-object p1, p0, Lcom/lidroid/parts/ColorPickerDialog$2;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$2;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;
    invoke-static {v0}, Lcom/lidroid/parts/ColorPickerDialog;->access$300(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->setTransparency(I)V

    .line 355
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 358
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 361
    return-void
.end method

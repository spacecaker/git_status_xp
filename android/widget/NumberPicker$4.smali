.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;Landroid/view/View;)V

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":NumPicker: Focus has changed: TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/NumberPicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

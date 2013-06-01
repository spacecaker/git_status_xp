.class public Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;
.super Landroid/preference/DialogPreference;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    iput v3, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->g:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->setPersistent(Z)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->c:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/com.cooee.launcherS3.launcher.SetupMenu"

    const-string v1, "min"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->d:I

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->setDialogLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->d:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->d:I

    :cond_0
    :goto_0
    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->persistInt(I)Z

    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const/high16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1010002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->b:Landroid/widget/TextView;

    const v0, 0x1010001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->d:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->g:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->a(I)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->g:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->g:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->e:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    :goto_0
    return-void

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DialogSeekBarPreference;->f:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

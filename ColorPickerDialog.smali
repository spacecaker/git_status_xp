.class public Lcom/lidroid/parts/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/parts/ColorPickerDialog$ScrollAnimation;,
        Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;,
        Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;,
        Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# static fields
.field static final STATE_FOCUSED:[I

.field static final STATE_PRESSED:[I


# instance fields
.field private mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextListener:Landroid/text/TextWatcher;

.field private mInitialColor:I

.field private mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

.field private mTransparencyBar:Landroid/widget/SeekBar;

.field private onColorChangedListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

.field private onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Lcom/lidroid/parts/ColorPickerDialog;->STATE_FOCUSED:[I

    .line 388
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/lidroid/parts/ColorPickerDialog;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "initialColor"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 341
    new-instance v0, Lcom/lidroid/parts/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/ColorPickerDialog$1;-><init>(Lcom/lidroid/parts/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->onColorChangedListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    .line 351
    new-instance v0, Lcom/lidroid/parts/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/ColorPickerDialog$2;-><init>(Lcom/lidroid/parts/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 364
    new-instance v0, Lcom/lidroid/parts/ColorPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/ColorPickerDialog$3;-><init>(Lcom/lidroid/parts/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditTextListener:Landroid/text/TextWatcher;

    .line 302
    iput-object p1, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    .line 303
    iput-object p2, p0, Lcom/lidroid/parts/ColorPickerDialog;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    .line 304
    iput p3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mInitialColor:I

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/parts/ColorPickerDialog;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lidroid/parts/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lidroid/parts/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lidroid/parts/ColorPickerDialog;)Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lidroid/parts/ColorPickerDialog;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lidroid/parts/ColorPickerDialog;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lidroid/parts/ColorPickerDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private convertToARGB(I)Ljava/lang/String;
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x1

    .line 251
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, alpha:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, red:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, green:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, blue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertToColorInt(Ljava/lang/String;)I
    .locals 11
    .parameter "argb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x10

    .line 277
    const/4 v0, -0x1

    .local v0, alpha:I
    const/4 v3, -0x1

    .local v3, red:I
    const/4 v2, -0x1

    .local v2, green:I
    const/4 v1, -0x1

    .line 279
    .local v1, blue:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 280
    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 282
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 283
    const/16 v4, 0x8

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 292
    :cond_0
    :goto_0
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4

    .line 285
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 286
    const/16 v0, 0xff

    .line 287
    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 288
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 289
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xa

    const/4 v7, 0x1

    .line 308
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 310
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 312
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 314
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 319
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 320
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v3, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lidroid/parts/ColorPickerDialog;->onColorChangedListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    iget v6, p0, Lcom/lidroid/parts/ColorPickerDialog;->mInitialColor:I

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;-><init>(Lcom/lidroid/parts/ColorPickerDialog;Landroid/content/Context;Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;I)V

    iput-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    .line 323
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mColorPickerView:Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v3, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    .line 326
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 327
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;

    iget-object v5, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "alpha"

    invoke-direct {v4, v5, v6, v7}, Lcom/lidroid/parts/ColorPickerDialog$TextSeekBarDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->mInitialColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 329
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->onTransparencyChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 330
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mTransparencyBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    .line 333
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    iget v4, p0, Lcom/lidroid/parts/ColorPickerDialog;->mInitialColor:I

    invoke-direct {p0, v4}, Lcom/lidroid/parts/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/lidroid/parts/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 338
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/lidroid/parts/ColorPickerDialog;->setTitle(I)V

    .line 339
    return-void
.end method

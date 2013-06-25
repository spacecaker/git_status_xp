.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 1238
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1237
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 991
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    .line 992
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1227
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1232
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    .line 1233
    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1057
    array-length v0, p2

    .line 1058
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v2, v0}, Landroid/content/res/Resources;->access$0(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1059
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1061
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1062
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p1

    move v3, v1

    move-object v4, p2

    .line 1061
    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1089
    return-object v7
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1142
    array-length v0, p2

    .line 1143
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v1, v0}, Landroid/content/res/Resources;->access$0(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1149
    check-cast p1, Landroid/content/res/XmlBlock$Parser;

    .line 1151
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1152
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    move v3, v1

    .line 1153
    :goto_0
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v1, p3

    move v2, p4

    move-object v4, p2

    .line 1150
    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1155
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1156
    iput-object p1, v7, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1187
    return-object v7

    .line 1152
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1027
    array-length v0, p1

    .line 1028
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v2, v0}, Landroid/content/res/Resources;->access$0(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1029
    iput-object p1, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1030
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1031
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, v1

    move v3, v1

    move-object v4, p1

    .line 1030
    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1032
    return-object v7
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1216
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .parameter

    .prologue
    .line 1004
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget v1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    .line 1005
    return-void
.end method

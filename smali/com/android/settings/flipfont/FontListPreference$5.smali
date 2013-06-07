.class Lcom/android/settings/flipfont/FontListPreference$5;
.super Ljava/lang/Thread;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;

.field final synthetic val$fontWriter:Lcom/android/settings/flipfont/FontWriter;

.field final synthetic val$selectedFont:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;Ljava/lang/String;Lcom/android/settings/flipfont/FontWriter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    iput-object p2, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$selectedFont:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$fontWriter:Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 290
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v10, 0x1

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z
    invoke-static {v9, v10}, Lcom/android/settings/flipfont/FontListPreference;->access$302(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 292
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v9}, Lcom/android/settings/flipfont/FontListPreference;->access$100(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$selectedFont:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v7

    .line 295
    .local v7, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$selectedFont:Ljava/lang/String;

    const-string v10, ".xml"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, fontdir:Ljava/lang/String;
    const-string v9, " "

    const-string v10, "-"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$fontWriter:Lcom/android/settings/flipfont/FontWriter;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings/flipfont/FontListPreference;->access$400(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 300
    .local v2, fontDir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$fontWriter:Lcom/android/settings/flipfont/FontWriter;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings/flipfont/FontListPreference;->access$400(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "sans.loc"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v8, 0x0

    .line 305
    .local v8, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v7, :cond_0

    .line 306
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, v7, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 307
    iget-object v9, v7, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v8, Lcom/android/settings/flipfont/TypefaceFile;

    .line 311
    .restart local v8       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v9}, Lcom/android/settings/flipfont/FontListPreference;->access$100(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I
    invoke-static {v10}, Lcom/android/settings/flipfont/FontListPreference;->access$500(Lcom/android/settings/flipfont/FontListPreference;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, apkname:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v9}, Lcom/android/settings/flipfont/FontListPreference;->access$100(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v9

    iget-object v9, v9, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 314
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 316
    .local v1, assetManager:Landroid/content/res/AssetManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 317
    .local v5, in:Ljava/io/InputStream;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->val$fontWriter:Lcom/android/settings/flipfont/FontWriter;

    invoke-virtual {v8}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v5, v10}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0           #apkname:Ljava/lang/String;
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #res:Landroid/content/res/Resources;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    .end local v4           #i:I
    :cond_0
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference$5;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v10, 0x0

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z
    invoke-static {v9, v10}, Lcom/android/settings/flipfont/FontListPreference;->access$302(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 325
    return-void

    .line 319
    .restart local v4       #i:I
    :catch_0
    move-exception v9

    goto :goto_1
.end method

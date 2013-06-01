.class public Lcom/badlogic/gdx/utils/GdxNativesLoader;
.super Ljava/lang/Object;


# static fields
.field public static disableNativesLoading:Z

.field public static is64Bit:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field public static nativesDir:Ljava/io/File;

.field private static nativesLoaded:Z

.field public static path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isWindows:Z

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isLinux:Z

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libgdx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gdx.dll"

    invoke-static {v2}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->crc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Version;->VERSION:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static extractLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    if-eqz v1, :cond_1

    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    const-class v2, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method public static load()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "So you don\'t like our native lib loading? Good, you are on your own now. We don\'t give support from here on out"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isWindows:Z

    if-eqz v0, :cond_6

    const-string v0, "gdx.dll"

    const-string v1, "gdx64.dll"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    if-nez v0, :cond_0

    :cond_4
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    if-eqz v0, :cond_8

    :cond_5
    const-string v0, "gdx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_2
    sput-boolean v3, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    if-eqz v0, :cond_7

    const-string v0, "libgdx.dylib"

    const-string v1, "libgdx.dylib"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "libgdx.dylib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sput-boolean v3, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isLinux:Z

    if-eqz v0, :cond_3

    const-string v0, "libgdx.so"

    const-string v1, "libgdx64.so"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_1

    :cond_8
    const-string v0, "gdx64"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->extractLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

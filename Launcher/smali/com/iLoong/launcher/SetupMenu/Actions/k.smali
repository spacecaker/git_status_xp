.class public Lcom/iLoong/launcher/SetupMenu/Actions/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iLoong/launcher/SetupMenu/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Lcom/iLoong/launcher/SetupMenu/Actions/k;


# instance fields
.field private b:Lcom/iLoong/launcher/b/g;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->d()Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/LauncherModel;->a()Lcom/iLoong/launcher/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b:Lcom/iLoong/launcher/b/g;

    iput-boolean v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c:Z

    iput v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->d:I

    return-void
.end method

.method public static declared-synchronized a()Lcom/iLoong/launcher/SetupMenu/Actions/k;
    .locals 2

    const-class v1, Lcom/iLoong/launcher/SetupMenu/Actions/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->h:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->h:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->h:Lcom/iLoong/launcher/SetupMenu/Actions/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/Actions/k;)Lcom/iLoong/launcher/b/g;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b:Lcom/iLoong/launcher/b/g;

    return-object v0
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/Actions/k;I)V
    .locals 0

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->d:I

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/SetupMenu/Actions/k;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iLoong/launcher/SetupMenu/Actions/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->g:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c002f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/p;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/p;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0030

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/o;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/o;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->e:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const v0, 0x7f0c00a0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c008c

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c:Z

    if-nez v0, :cond_1

    const v0, 0x7f0c00a1

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c00a2

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->e()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->f:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0c00a3

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iLoong/launcher/desktop/iLoongApplication;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c00a4

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0c00a5

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00a1

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c002f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/n;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/n;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0030

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iLoong/launcher/SetupMenu/Actions/m;

    invoke-direct {v2, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/m;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/w;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/SetupMenu/Actions/w;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CooeeLauncherEx.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "application/vnd.android.package-archive"

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0c00a6

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->DialogMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "type"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "versioncode"

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongApplication;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packname"

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/b;

    invoke-direct {v1, p0, v3}, Lcom/iLoong/launcher/SetupMenu/Actions/b;-><init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 7

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/p;->a()Lcom/iLoong/launcher/SetupMenu/p;

    move-result-object v0

    const-string v1, "CooeeLauncherEx"

    const-string v2, "CooeeLauncherEx.apk"

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->f:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iLoong/launcher/desktop/iLoongApplication;->i()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/SetupMenu/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iLoong/launcher/SetupMenu/d;)V

    return-void
.end method

.method public d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/iLoong/launcher/SetupMenu/Actions/k;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CooeeLauncherEx.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/k;->d:I

    if-ne v2, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->c()V

    goto :goto_0
.end method

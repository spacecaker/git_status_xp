.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;,
        Landroid/text/method/QwertyKeyListener$CapsStatusRequestReceiver;
    }
.end annotation


# static fields
.field private static final CAPS_STATUS_ACTION:Ljava/lang/String; = "caps_status_action"

.field private static final GREEK_LANGUAGE_ACTION:Ljava/lang/String; = "com.android.mms.GREEK_LANGUAGE_ACTION"

.field private static PICKER_SETS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "QwertyKeyListener"

.field private static activeLanguage:I

.field private static mIsCapsStatusReceiverRegistered:Z

.field private static mIsGreekUpperCaseRequested:Z

.field private static m_sLocale:Ljava/lang/String;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;

.field private static symPressed:Z


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x24

    const/16 v6, 0x22

    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 45
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Landroid/text/method/QwertyKeyListener;

    sput-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 50
    sput-boolean v4, Landroid/text/method/QwertyKeyListener;->mIsGreekUpperCaseRequested:Z

    .line 51
    sput-boolean v4, Landroid/text/method/QwertyKeyListener;->mIsCapsStatusReceiverRegistered:Z

    .line 60
    sput v4, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 61
    const-string v1, ""

    sput-object v1, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    .line 593
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 597
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "OMN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TPH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VDH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IRD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string/jumbo v3, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x43

    const-string/jumbo v3, "\u00c7\u0106\u010c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x44

    const-string/jumbo v3, "\u010e\u0110"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x45

    const-string/jumbo v3, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x47

    const-string/jumbo v3, "\u011e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4c

    const-string/jumbo v3, "\u0139\u013d\u0141"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x49

    const-string/jumbo v3, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4e

    const-string/jumbo v3, "\u00d1\u0143\u0147"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4f

    const-string/jumbo v3, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c\u0150"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x52

    const-string/jumbo v3, "\u0154\u0158"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x53

    const-string/jumbo v3, "\u015a\u0160\u015e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x54

    const-string/jumbo v3, "\u0164"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x55

    const-string/jumbo v3, "\u00d9\u00da\u00db\u00dc\u016e\u016a\u0170"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x59

    const-string/jumbo v3, "\u00dd\u0178"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x5a

    const-string/jumbo v3, "\u0179\u017b\u017d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x61

    const-string/jumbo v3, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x63

    const-string/jumbo v3, "\u00e7\u0107\u010d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x64

    const-string/jumbo v3, "\u010f\u0111"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x65

    const-string/jumbo v3, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x67

    const-string/jumbo v3, "\u011f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x69

    const-string/jumbo v3, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6c

    const-string/jumbo v3, "\u013a\u013e\u0142"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6e

    const-string/jumbo v3, "\u00f1\u0144\u0148"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6f

    const-string/jumbo v3, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d\u0151"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x72

    const-string/jumbo v3, "\u0155\u0159"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x73

    const-string/jumbo v3, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x74

    const-string/jumbo v3, "\u0165"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x75

    const-string/jumbo v3, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b\u0170"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x79

    const-string/jumbo v3, "\u00fd\u00ff"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x7a

    const-string/jumbo v3, "\u017a\u017c\u017e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v2, 0xef01

    const-string/jumbo v3, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2f

    const-string v3, "\\"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x31

    const-string/jumbo v3, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x32

    const-string/jumbo v3, "\u00b2\u2154"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x33

    const-string/jumbo v3, "\u00b3\u00be\u215c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x34

    const-string/jumbo v3, "\u2074"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x35

    const-string/jumbo v3, "\u215d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x37

    const-string/jumbo v3, "\u215e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x30

    const-string/jumbo v3, "\u207f\u2205"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string/jumbo v3, "\u2020\u2021"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2d

    const-string/jumbo v3, "\u2013\u2014"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 664
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string/jumbo v3, "\u00b1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "[{<"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "]}>"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3f

    const-string/jumbo v3, "\u00bf"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2c

    const-string/jumbo v3, "\u201a\u201e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\u2260\u2248\u221e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\u2264\u00ab\u2039"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 676
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\u2265\u00bb\u203a"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1358
    :goto_0
    sput-boolean v4, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    return-void

    .line 678
    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "XEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TLB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    :cond_2
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string/jumbo v3, "\u00c0\u00c2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x43

    const-string/jumbo v3, "\u00c7"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x45

    const-string/jumbo v3, "\u00c9\u00c8\u00ca\u00cb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x49

    const-string/jumbo v3, "\u00ce\u00cf"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4f

    const-string/jumbo v3, "\u0150\u0152"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x55

    const-string/jumbo v3, "\u00d9\u00db"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x61

    const-string/jumbo v3, "\u00e0\u00e2"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 686
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x63

    const-string/jumbo v3, "\u00e7"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x65

    const-string/jumbo v3, "\u00e9\u00e8\u00ea\u00eb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x69

    const-string/jumbo v3, "\u00ee\u00ef"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6f

    const-string/jumbo v3, "\u0153\u00f4"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 690
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x75

    const-string/jumbo v3, "\u00f9\u00fb"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v2, 0xef01

    const-string/jumbo v3, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2f

    const-string v3, "\\"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x31

    const-string/jumbo v3, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x32

    const-string/jumbo v3, "\u00b2\u2154"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x33

    const-string/jumbo v3, "\u00b3\u00be\u215c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x34

    const-string/jumbo v3, "\u2074"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x35

    const-string/jumbo v3, "\u215d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 702
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x37

    const-string/jumbo v3, "\u215e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 703
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x30

    const-string/jumbo v3, "\u207f\u2205"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 706
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string/jumbo v3, "\u2020\u2021"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2d

    const-string/jumbo v3, "\u2013\u2014"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 708
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string/jumbo v3, "\u00b1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "[{<"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "]}>"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3f

    const-string/jumbo v3, "\u00bf"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 714
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2c

    const-string/jumbo v3, "\u201a\u201e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 718
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\u2260\u2248\u221e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\u2264\u00ab\u2039"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 720
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\u2265\u00bb\u203a"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 722
    :cond_3
    if-eqz v0, :cond_5

    const-string v1, "NEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "XEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NDN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 723
    :cond_4
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string/jumbo v3, "\u00c4\u00c6\u00c5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 724
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x45

    const-string/jumbo v3, "\u00c9"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 725
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4f

    const-string/jumbo v3, "\u00d8\u00d6"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 726
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0xc4

    const-string/jumbo v3, "\u00c5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 727
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0xc6

    const-string/jumbo v3, "\u00c5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x61

    const-string/jumbo v3, "\u00e4\u00e6\u00e5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x65

    const-string/jumbo v3, "\u00e9"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6f

    const-string/jumbo v3, "\u00f8\u00f6"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0xe4

    const-string/jumbo v3, "\u00e5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 732
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0xe6

    const-string/jumbo v3, "\u00e5"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 733
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v2, 0xef01

    const-string/jumbo v3, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2f

    const-string v3, "\\"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x31

    const-string/jumbo v3, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x32

    const-string/jumbo v3, "\u00b2\u2154"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x33

    const-string/jumbo v3, "\u00b3\u00be\u215c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 742
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x34

    const-string/jumbo v3, "\u2074"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x35

    const-string/jumbo v3, "\u215d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x37

    const-string/jumbo v3, "\u215e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x30

    const-string/jumbo v3, "\u207f\u2205"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string/jumbo v3, "\u2020\u2021"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2d

    const-string/jumbo v3, "\u2013\u2014"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string/jumbo v3, "\u00b1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "[{<"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "]}>"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 754
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3f

    const-string/jumbo v3, "\u00bf"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2c

    const-string/jumbo v3, "\u201a\u201e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\u2260\u2248\u221e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\u2264\u00ab\u2039"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\u2265\u00bb\u203a"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 766
    :cond_5
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string/jumbo v3, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x43

    const-string/jumbo v3, "\u00c7\u0106\u010c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x44

    const-string/jumbo v3, "\u010e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x45

    const-string/jumbo v3, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112\u0116"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x47

    const-string/jumbo v3, "\u011e\u0122"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x49

    const-string/jumbo v3, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130\u012e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 772
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4b

    const-string/jumbo v3, "\u0136"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4c

    const-string/jumbo v3, "\u0141\u013b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4e

    const-string/jumbo v3, "\u00d1\u0143\u0147\u0145"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x4f

    const-string/jumbo v3, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 776
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x52

    const-string/jumbo v3, "\u0158\u0154"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x53

    const-string/jumbo v3, "\u015a\u0160\u015e\u00df"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 778
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x54

    const-string/jumbo v3, "\u0164"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x55

    const-string/jumbo v3, "\u00d9\u00da\u00db\u00dc\u016e\u016a\u0172"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x59

    const-string/jumbo v3, "\u00dd\u0178"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 781
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x5a

    const-string/jumbo v3, "\u0179\u017b\u017d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x61

    const-string/jumbo v3, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x63

    const-string/jumbo v3, "\u00e7\u0107\u010d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 784
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x64

    const-string/jumbo v3, "\u010f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 785
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x65

    const-string/jumbo v3, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113\u0117"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x67

    const-string/jumbo v3, "\u011f\u0123"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 787
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x69

    const-string/jumbo v3, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131\u012f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6b

    const-string/jumbo v3, "\u0137"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 789
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6c

    const-string/jumbo v3, "\u0142\u013c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6e

    const-string/jumbo v3, "\u00f1\u0144\u0148\u0146"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x6f

    const-string/jumbo v3, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 792
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x72

    const-string/jumbo v3, "\u0159\u0155"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 793
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x73

    const-string/jumbo v3, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x74

    const-string/jumbo v3, "\u0165"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 795
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x75

    const-string/jumbo v3, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b\u0173"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x79

    const-string/jumbo v3, "\u00fd\u00ff"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x7a

    const-string/jumbo v3, "\u017a\u017c\u017e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v2, 0xef01

    const-string/jumbo v3, "\u2026\u00a5\u2022\u00ae\'\u00a9\u00b1[]\u00a7{}\\|^<>\u00ab\u00bb\u00bf\u20ac\u00a3\u00a2\u20a9\u00a1%~\u3013\u2122\u00a4"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 799
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2f

    const-string v3, "\\"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3b1

    const-string/jumbo v3, "\u03ac"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 803
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x391

    const-string/jumbo v3, "\u0386"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3b5

    const-string/jumbo v3, "\u03ad"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x395

    const-string/jumbo v3, "\u0388"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3b7

    const-string/jumbo v3, "\u03ae"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x397

    const-string/jumbo v3, "\u0389"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3b9

    const-string/jumbo v3, "\u03af\u03ca\u0390"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 809
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x399

    const-string/jumbo v3, "\u038a\u03aa"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3bf

    const-string/jumbo v3, "\u03cc"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 811
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x39f

    const-string/jumbo v3, "\u038c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c9

    const-string/jumbo v3, "\u03ce"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 813
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3a9

    const-string/jumbo v3, "\u038f"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 814
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c5

    const-string/jumbo v3, "\u03cd\u03cb\u03b0"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 815
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3a5

    const-string/jumbo v3, "\u038e\u03ab"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x31

    const-string/jumbo v3, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 819
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x32

    const-string/jumbo v3, "\u00b2\u2154"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 820
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x33

    const-string/jumbo v3, "\u00b3\u00be\u215c"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x34

    const-string/jumbo v3, "\u2074"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 822
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x35

    const-string/jumbo v3, "\u215d"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 823
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x37

    const-string/jumbo v3, "\u215e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 824
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x30

    const-string/jumbo v3, "\u207f\u2205"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 825
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string/jumbo v3, "\u2020\u2021"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2d

    const-string/jumbo v3, "\u2013\u2014"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 829
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string/jumbo v3, "\u00b1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 830
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "[{<"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 831
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "]}>"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3f

    const-string/jumbo v3, "\u00bf"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 835
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x2c

    const-string/jumbo v3, "\u201a\u201e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 839
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\u2260\u2248\u221e"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\u2264\u00ab\u2039"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 841
    sget-object v1, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\u2265\u00bb\u203a"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 4
    .parameter "cap"
    .parameter "autotext"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 84
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 85
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, code:Ljava/lang/String;
    sget-boolean v1, Landroid/text/method/QwertyKeyListener;->mIsCapsStatusReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Landroid/text/method/QwertyKeyListener;->mIsCapsStatusReceiverRegistered:Z

    .line 89
    :cond_0
    const-string v1, "GT-S5660"

    const-string v2, "GT-I5510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    if-eqz v0, :cond_2

    const-string v1, "CYO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VGR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CYV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "COS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GRB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TGR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/method/QwertyKeyListener;->setQwertyLanguageForGreek(Ljava/lang/String;)V

    .line 96
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->isPasswordEntryKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sput-boolean v3, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    .line 98
    :cond_3
    return-void

    .line 94
    :cond_4
    sput-boolean v3, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-boolean p0, Landroid/text/method/QwertyKeyListener;->mIsGreekUpperCaseRequested:Z

    return p0
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .parameter "autotext"
    .parameter "cap"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int v0, v1, v2

    .line 108
    .local v0, off:I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 109
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 112
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 106
    .end local v0           #off:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 524
    sub-int v4, p3, p2

    .line 525
    .local v4, len:I
    const/4 v1, 0x0

    .line 527
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 530
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, key:Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v8, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 532
    const/4 v1, 0x1

    .line 534
    if-nez v6, :cond_0

    move-object v7, v9

    .line 562
    .end local v3           #key:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 540
    .local v0, caps:I
    if-eqz v1, :cond_2

    .line 541
    move v2, p2

    .local v2, j:I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 542
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 543
    add-int/lit8 v0, v0, 0x1

    .line 541
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 549
    .end local v2           #j:I
    :cond_2
    if-nez v0, :cond_3

    .line 550
    move-object v5, v6

    .line 558
    .local v5, out:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    invoke-static {p1, p2, v5, v8, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v9

    .line 560
    goto :goto_0

    .line 551
    .end local v5           #out:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 552
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 553
    .end local v5           #out:Ljava/lang/String;
    :cond_4
    if-ne v0, v4, :cond_5

    .line 554
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 556
    .end local v5           #out:Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 562
    goto :goto_0
.end method

.method public static isInGreekLanguageMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "CYO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VGR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CYV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "COS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GRB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TGR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_0
    sget v1, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 66
    goto :goto_0

    :cond_2
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 580
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 581
    .local v3, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 582
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 586
    .local v1, len:I
    new-array v2, v1, [C

    .line 587
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 589
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 591
    return-void
.end method

.method private replaceLanguageToEnglish(ILandroid/text/Editable;I)V
    .locals 3
    .parameter "keyCode"
    .parameter "content"
    .parameter "selEnd"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 868
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_2

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2

    .line 869
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 870
    :cond_0
    const-string v0, "A"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1106
    :goto_0
    return-void

    .line 874
    :cond_1
    const-string v0, "a"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 877
    :cond_2
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_5

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_5

    .line 878
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 879
    :cond_3
    const-string v0, "B"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 883
    :cond_4
    const-string v0, "b"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 886
    :cond_5
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_8

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_8

    .line 887
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 888
    :cond_6
    const-string v0, "C"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 892
    :cond_7
    const-string v0, "c"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 895
    :cond_8
    const/16 v0, 0x20

    if-ne p1, v0, :cond_b

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_b

    .line 896
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 897
    :cond_9
    const-string v0, "D"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 901
    :cond_a
    const-string v0, "d"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 904
    :cond_b
    const/16 v0, 0x21

    if-ne p1, v0, :cond_e

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_e

    .line 905
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_c

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 906
    :cond_c
    const-string v0, "E"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 910
    :cond_d
    const-string v0, "e"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 913
    :cond_e
    const/16 v0, 0x22

    if-ne p1, v0, :cond_11

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_11

    .line 914
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 915
    :cond_f
    const-string v0, "F"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 919
    :cond_10
    const-string v0, "f"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 922
    :cond_11
    const/16 v0, 0x23

    if-ne p1, v0, :cond_14

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_14

    .line 923
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_12

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    .line 924
    :cond_12
    const-string v0, "G"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 928
    :cond_13
    const-string v0, "g"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 931
    :cond_14
    const/16 v0, 0x24

    if-ne p1, v0, :cond_17

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_17

    .line 932
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_15

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_16

    .line 933
    :cond_15
    const-string v0, "H"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 937
    :cond_16
    const-string v0, "h"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 940
    :cond_17
    const/16 v0, 0x25

    if-ne p1, v0, :cond_1a

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_1a

    .line 941
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 942
    :cond_18
    const-string v0, "I"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 946
    :cond_19
    const-string v0, "i"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 949
    :cond_1a
    const/16 v0, 0x26

    if-ne p1, v0, :cond_1d

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_1d

    .line 950
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_1b

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 951
    :cond_1b
    const-string v0, "J"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 955
    :cond_1c
    const-string v0, "j"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 958
    :cond_1d
    const/16 v0, 0x27

    if-ne p1, v0, :cond_20

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_20

    .line 959
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_1e

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 960
    :cond_1e
    const-string v0, "K"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 964
    :cond_1f
    const-string v0, "k"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 967
    :cond_20
    const/16 v0, 0x28

    if-ne p1, v0, :cond_23

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_23

    .line 968
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_21

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 969
    :cond_21
    const-string v0, "L"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 973
    :cond_22
    const-string v0, "l"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 976
    :cond_23
    const/16 v0, 0x29

    if-ne p1, v0, :cond_26

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_26

    .line 977
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_24

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 978
    :cond_24
    const-string v0, "M"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 982
    :cond_25
    const-string v0, "m"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 985
    :cond_26
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_29

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_29

    .line 986
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_27

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 987
    :cond_27
    const-string v0, "N"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 991
    :cond_28
    const-string v0, "n"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 994
    :cond_29
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_2c

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2c

    .line 995
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_2a

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 996
    :cond_2a
    const-string v0, "O"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1000
    :cond_2b
    const-string v0, "o"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1003
    :cond_2c
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_2f

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2f

    .line 1004
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_2d

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_2e

    .line 1005
    :cond_2d
    const-string v0, "P"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1009
    :cond_2e
    const-string/jumbo v0, "p"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1012
    :cond_2f
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_32

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_32

    .line 1013
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_30

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_31

    .line 1014
    :cond_30
    const-string v0, "Q"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1018
    :cond_31
    const-string/jumbo v0, "q"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1021
    :cond_32
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_35

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_35

    .line 1022
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_33

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_34

    .line 1023
    :cond_33
    const-string v0, "R"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1027
    :cond_34
    const-string/jumbo v0, "r"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1030
    :cond_35
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_38

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_38

    .line 1031
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_36

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_37

    .line 1032
    :cond_36
    const-string v0, "S"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1036
    :cond_37
    const-string/jumbo v0, "s"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1039
    :cond_38
    const/16 v0, 0x30

    if-ne p1, v0, :cond_3b

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_3b

    .line 1040
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_39

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 1041
    :cond_39
    const-string v0, "T"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1045
    :cond_3a
    const-string/jumbo v0, "t"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1048
    :cond_3b
    const/16 v0, 0x31

    if-ne p1, v0, :cond_3e

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_3e

    .line 1049
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3c

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_3d

    .line 1050
    :cond_3c
    const-string v0, "U"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1054
    :cond_3d
    const-string/jumbo v0, "u"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1057
    :cond_3e
    const/16 v0, 0x32

    if-ne p1, v0, :cond_41

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_41

    .line 1058
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3f

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 1059
    :cond_3f
    const-string v0, "V"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1063
    :cond_40
    const-string/jumbo v0, "v"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1066
    :cond_41
    const/16 v0, 0x33

    if-ne p1, v0, :cond_44

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_44

    .line 1067
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_42

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_43

    .line 1068
    :cond_42
    const-string v0, "W"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1072
    :cond_43
    const-string/jumbo v0, "w"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1075
    :cond_44
    const/16 v0, 0x34

    if-ne p1, v0, :cond_47

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_47

    .line 1076
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_45

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_46

    .line 1077
    :cond_45
    const-string v0, "X"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1081
    :cond_46
    const-string/jumbo v0, "x"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1084
    :cond_47
    const/16 v0, 0x35

    if-ne p1, v0, :cond_4a

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_4a

    .line 1085
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_48

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_49

    .line 1086
    :cond_48
    const-string v0, "Y"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1090
    :cond_49
    const-string/jumbo v0, "y"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1093
    :cond_4a
    const/16 v0, 0x36

    if-ne p1, v0, :cond_4d

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_4d

    .line 1094
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_4b

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_4c

    .line 1095
    :cond_4b
    const-string v0, "Z"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1099
    :cond_4c
    const-string/jumbo v0, "z"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1104
    :cond_4d
    const-string v0, "QwertyKeyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE is not changed. symPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private replaceLanguageToGreek(ILandroid/text/Editable;I)V
    .locals 3
    .parameter "keyCode"
    .parameter "content"
    .parameter "selEnd"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1108
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_2

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2

    .line 1109
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1110
    :cond_0
    const-string/jumbo v0, "\u0391"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1346
    :goto_0
    return-void

    .line 1114
    :cond_1
    const-string/jumbo v0, "\u03b1"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1117
    :cond_2
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_5

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_5

    .line 1118
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1119
    :cond_3
    const-string/jumbo v0, "\u0392"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1123
    :cond_4
    const-string/jumbo v0, "\u03b2"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1126
    :cond_5
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_8

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_8

    .line 1127
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1128
    :cond_6
    const-string/jumbo v0, "\u03a8"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1132
    :cond_7
    const-string/jumbo v0, "\u03c8"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1135
    :cond_8
    const/16 v0, 0x20

    if-ne p1, v0, :cond_b

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_b

    .line 1136
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1137
    :cond_9
    const-string/jumbo v0, "\u0394"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1141
    :cond_a
    const-string/jumbo v0, "\u03b4"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1144
    :cond_b
    const/16 v0, 0x21

    if-ne p1, v0, :cond_e

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_e

    .line 1145
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_c

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 1146
    :cond_c
    const-string/jumbo v0, "\u0395"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1150
    :cond_d
    const-string/jumbo v0, "\u03b5"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1153
    :cond_e
    const/16 v0, 0x22

    if-ne p1, v0, :cond_11

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_11

    .line 1154
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 1155
    :cond_f
    const-string/jumbo v0, "\u03a6"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1159
    :cond_10
    const-string/jumbo v0, "\u03c6"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1162
    :cond_11
    const/16 v0, 0x23

    if-ne p1, v0, :cond_14

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_14

    .line 1163
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_12

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    .line 1164
    :cond_12
    const-string/jumbo v0, "\u0393"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1168
    :cond_13
    const-string/jumbo v0, "\u03b3"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1171
    :cond_14
    const/16 v0, 0x24

    if-ne p1, v0, :cond_17

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_17

    .line 1172
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_15

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_16

    .line 1173
    :cond_15
    const-string/jumbo v0, "\u0397"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1177
    :cond_16
    const-string/jumbo v0, "\u03b7"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1180
    :cond_17
    const/16 v0, 0x25

    if-ne p1, v0, :cond_1a

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_1a

    .line 1181
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 1182
    :cond_18
    const-string/jumbo v0, "\u0399"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1186
    :cond_19
    const-string/jumbo v0, "\u03b9"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1189
    :cond_1a
    const/16 v0, 0x26

    if-ne p1, v0, :cond_1d

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_1d

    .line 1190
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_1b

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 1191
    :cond_1b
    const-string/jumbo v0, "\u039e"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1195
    :cond_1c
    const-string/jumbo v0, "\u03be"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1198
    :cond_1d
    const/16 v0, 0x27

    if-ne p1, v0, :cond_20

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_20

    .line 1199
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_1e

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 1200
    :cond_1e
    const-string/jumbo v0, "\u039a"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1204
    :cond_1f
    const-string/jumbo v0, "\u03ba"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1207
    :cond_20
    const/16 v0, 0x28

    if-ne p1, v0, :cond_23

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_23

    .line 1208
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_21

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 1209
    :cond_21
    const-string/jumbo v0, "\u039b"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1213
    :cond_22
    const-string/jumbo v0, "\u03bb"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1216
    :cond_23
    const/16 v0, 0x29

    if-ne p1, v0, :cond_26

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_26

    .line 1217
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_24

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 1218
    :cond_24
    const-string/jumbo v0, "\u039c"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1222
    :cond_25
    const-string/jumbo v0, "\u03bc"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1225
    :cond_26
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_29

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_29

    .line 1226
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_27

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 1227
    :cond_27
    const-string/jumbo v0, "\u039d"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1231
    :cond_28
    const-string/jumbo v0, "\u03bd"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1234
    :cond_29
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_2c

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2c

    .line 1235
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_2a

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 1236
    :cond_2a
    const-string/jumbo v0, "\u039f"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1240
    :cond_2b
    const-string/jumbo v0, "\u03bf"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1243
    :cond_2c
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_2f

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_2f

    .line 1244
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_2d

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_2e

    .line 1245
    :cond_2d
    const-string/jumbo v0, "\u03a0"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1249
    :cond_2e
    const-string/jumbo v0, "\u03c0"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1252
    :cond_2f
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_32

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_32

    .line 1253
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_30

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_31

    .line 1254
    :cond_30
    const-string v0, "Q"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1258
    :cond_31
    const-string/jumbo v0, "q"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1261
    :cond_32
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_35

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_35

    .line 1262
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_33

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_34

    .line 1263
    :cond_33
    const-string/jumbo v0, "\u03a1"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1267
    :cond_34
    const-string/jumbo v0, "\u03c1"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1270
    :cond_35
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_38

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_38

    .line 1271
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_36

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_37

    .line 1272
    :cond_36
    const-string/jumbo v0, "\u03a3"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1276
    :cond_37
    const-string/jumbo v0, "\u03c3"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1279
    :cond_38
    const/16 v0, 0x30

    if-ne p1, v0, :cond_3b

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_3b

    .line 1280
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_39

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 1281
    :cond_39
    const-string/jumbo v0, "\u03a4"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1285
    :cond_3a
    const-string/jumbo v0, "\u03c4"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1288
    :cond_3b
    const/16 v0, 0x31

    if-ne p1, v0, :cond_3e

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_3e

    .line 1289
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3c

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_3d

    .line 1290
    :cond_3c
    const-string/jumbo v0, "\u0398"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1294
    :cond_3d
    const-string/jumbo v0, "\u03b8"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1297
    :cond_3e
    const/16 v0, 0x32

    if-ne p1, v0, :cond_41

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_41

    .line 1298
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_3f

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 1299
    :cond_3f
    const-string/jumbo v0, "\u03a9"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1303
    :cond_40
    const-string/jumbo v0, "\u03c9"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1306
    :cond_41
    const/16 v0, 0x33

    if-ne p1, v0, :cond_44

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_44

    .line 1307
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_42

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_43

    .line 1308
    :cond_42
    const-string v0, "W"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1312
    :cond_43
    const-string/jumbo v0, "\u03c2"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1315
    :cond_44
    const/16 v0, 0x34

    if-ne p1, v0, :cond_47

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_47

    .line 1316
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_45

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_46

    .line 1317
    :cond_45
    const-string/jumbo v0, "\u03a7"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1321
    :cond_46
    const-string/jumbo v0, "\u03c7"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1324
    :cond_47
    const/16 v0, 0x35

    if-ne p1, v0, :cond_4a

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_4a

    .line 1325
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_48

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_49

    .line 1326
    :cond_48
    const-string/jumbo v0, "\u03a5"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1330
    :cond_49
    const-string/jumbo v0, "\u03c5"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1333
    :cond_4a
    const/16 v0, 0x36

    if-ne p1, v0, :cond_4d

    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v0, :cond_4d

    .line 1334
    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eq v0, v1, :cond_4b

    invoke-static {p2, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v2, :cond_4c

    .line 1335
    :cond_4b
    const-string/jumbo v0, "\u0396"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1339
    :cond_4c
    const-string/jumbo v0, "\u03b6"

    invoke-interface {p2, p3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1344
    :cond_4d
    const-string v0, "QwertyKeyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE is not changed. symPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setCapsKey(Z)Z
    .locals 1
    .parameter "isOn"

    .prologue
    .line 79
    sput-boolean p0, Landroid/text/method/QwertyKeyListener;->mIsGreekUpperCaseRequested:Z

    .line 80
    sget-boolean v0, Landroid/text/method/QwertyKeyListener;->mIsGreekUpperCaseRequested:Z

    return v0
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    .line 847
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 848
    .local v4, set:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 849
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    .line 852
    :cond_0
    if-ne p5, v6, :cond_1

    .line 853
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    move v0, v6

    .line 857
    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 46
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 153
    const/16 v35, 0x0

    .line 154
    .local v35, pref:I
    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 156
    .local v23, code:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 157
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v35

    .line 161
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 162
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 164
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v41

    .line 165
    .local v41, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 167
    .local v40, selEnd:I
    if-ltz v41, :cond_1

    if-gez v40, :cond_2

    .line 168
    :cond_1
    const/16 v40, 0x0

    move/from16 v41, v40

    .line 169
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 173
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 174
    .local v20, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 178
    .local v19, activeEnd:I
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v30

    .line 180
    .local v30, i:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 181
    .local v10, count:I
    sget-boolean v5, Landroid/text/method/QwertyKeyListener;->mIsGreekUpperCaseRequested:Z

    if-eqz v5, :cond_3

    .line 182
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v30

    .line 184
    :cond_3
    if-lez v10, :cond_5

    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_5

    if-lez v41, :cond_5

    .line 185
    const/4 v5, 0x1

    sub-int v5, v41, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 187
    .local v8, c:C
    move v0, v8

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_5

    if-eqz p1, :cond_5

    .line 188
    :cond_4
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 190
    const/4 v5, 0x1

    .line 519
    .end local v8           #c:C
    :goto_0
    return v5

    .line 195
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/method/QwertyKeyListener;->setQwertyLanguageForGreek(Ljava/lang/String;)V

    .line 198
    sget-boolean v5, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-eqz v5, :cond_a

    if-eqz p1, :cond_a

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    if-nez v5, :cond_a

    const/16 v5, 0x1d

    move v0, v5

    move/from16 v1, p3

    if-gt v0, v1, :cond_a

    const/16 v5, 0x36

    move/from16 v0, p3

    move v1, v5

    if-gt v0, v1, :cond_a

    .line 199
    const-string v5, "GT-S5660"

    const-string v6, "GT-I5510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 200
    if-eqz v23, :cond_7

    const-string v5, "CYO"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "VGR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CYV"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "COS"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "EUR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "GRB"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "TGR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;->replaceLanguageToGreek(ILandroid/text/Editable;I)V

    .line 206
    :cond_7
    :goto_1
    const/4 v5, 0x1

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 207
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 208
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;->replaceLanguageToEnglish(ILandroid/text/Editable;I)V

    goto :goto_1

    .line 211
    :cond_a
    const-string v5, "GT-S5660"

    const-string v6, "GT-I5510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 212
    const/16 v5, 0x38

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_f

    .line 213
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 214
    :cond_b
    if-eqz p1, :cond_e

    .line 215
    if-eqz v23, :cond_d

    const-string v5, "DTM"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "MAX"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "DBT"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "XEG"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "DRE"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "ATO"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "AUT"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "EPL"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "DTR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "VD2"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "VDR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 220
    :cond_c
    const-string v5, ","

    move-object/from16 v0, p2

    move/from16 v1, v40

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 223
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 224
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 222
    :cond_d
    const-string v5, ".com"

    move-object/from16 v0, p2

    move/from16 v1, v40

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 226
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 227
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 232
    :cond_f
    const/16 v5, 0x3f

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_1a

    .line 233
    const-string/jumbo v5, "ro.revision"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 234
    .local v39, revision:Ljava/lang/String;
    sget v5, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    if-nez v5, :cond_14

    .line 235
    const/4 v5, 0x1

    sput v5, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 241
    :cond_10
    :goto_3
    if-eqz v23, :cond_18

    const-string v5, "CYO"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "VGR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "CYV"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "COS"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "EUR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "GRB"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "TGR"

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 242
    :cond_11
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 244
    :cond_12
    if-eqz p1, :cond_13

    .line 245
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 248
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 249
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 237
    :cond_14
    sget v5, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 238
    const/4 v5, 0x0

    sput v5, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    goto/16 :goto_3

    .line 253
    :cond_15
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 254
    invoke-static {}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->isPasswordEntryKeyboard()Z

    move-result v5

    if-nez v5, :cond_16

    .line 255
    sget-boolean v5, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    if-nez v5, :cond_17

    const/4 v5, 0x1

    :goto_4
    sput-boolean v5, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    .line 256
    :cond_16
    const-string v5, "QwertyKeyListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "symPressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 255
    :cond_17
    const/4 v5, 0x0

    goto :goto_4

    .line 261
    :cond_18
    if-eqz p1, :cond_19

    .line 262
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 265
    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 266
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 271
    .end local v39           #revision:Ljava/lang/String;
    :cond_1a
    const-string v5, "GT-S5660"

    const-string v6, "GT-B7510"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 274
    const/16 v5, 0x3f

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_1e

    .line 276
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1b

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1d

    .line 278
    :cond_1b
    if-eqz p1, :cond_1c

    .line 279
    new-instance v5, Landroid/text/method/SmileyPickerDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/SmileyPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V

    invoke-virtual {v5}, Landroid/text/method/SmileyPickerDialog;->show()V

    .line 288
    :cond_1c
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 289
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 283
    :cond_1d
    if-eqz p1, :cond_1c

    .line 284
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    goto :goto_5

    .line 292
    :cond_1e
    const v5, 0xef01

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_20

    .line 293
    if-eqz p1, :cond_1f

    .line 294
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 297
    :cond_1f
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 298
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 301
    :cond_20
    const v5, 0xef00

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_23

    .line 304
    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_21

    .line 305
    move/from16 v43, v40

    .line 308
    .local v43, start:I
    :goto_6
    if-lez v43, :cond_22

    sub-int v5, v40, v43

    const/4 v6, 0x4

    if-ge v5, v6, :cond_22

    const/4 v5, 0x1

    sub-int v5, v43, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_22

    .line 309
    add-int/lit8 v43, v43, -0x1

    goto :goto_6

    .line 312
    .end local v43           #start:I
    :cond_21
    move/from16 v43, v41

    .line 315
    .restart local v43       #start:I
    :cond_22
    const/16 v22, -0x1

    .line 317
    .local v22, ch:I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v29

    .line 318
    .local v29, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v29

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 321
    .end local v29           #hex:Ljava/lang/String;
    :goto_7
    if-ltz v22, :cond_2c

    .line 322
    move/from16 v41, v43

    .line 323
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 324
    move/from16 v30, v22

    .line 330
    .end local v22           #ch:I
    .end local v43           #start:I
    :cond_23
    :goto_8
    if-eqz v30, :cond_36

    .line 331
    const/16 v26, 0x0

    .line 333
    .local v26, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v30

    if-eqz v5, :cond_24

    .line 334
    const/16 v26, 0x1

    .line 335
    const v5, 0x7fffffff

    and-int v30, v30, v5

    .line 338
    :cond_24
    move/from16 v0, v20

    move/from16 v1, v41

    if-ne v0, v1, :cond_26

    move/from16 v0, v19

    move/from16 v1, v40

    if-ne v0, v1, :cond_26

    .line 339
    const/16 v38, 0x0

    .line 341
    .local v38, replace:Z
    sub-int v5, v40, v41

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_25

    .line 342
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 343
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v24

    .line 345
    .local v24, composed:I
    if-eqz v24, :cond_25

    .line 346
    move/from16 v30, v24

    .line 347
    const/16 v38, 0x1

    .line 351
    .end local v18           #accent:C
    .end local v24           #composed:I
    :cond_25
    if-nez v38, :cond_26

    .line 352
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 353
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 354
    move/from16 v41, v40

    .line 358
    .end local v38           #replace:Z
    :cond_26
    and-int/lit8 v5, v35, 0x1

    if-eqz v5, :cond_27

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 361
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v44

    .line 362
    .local v44, where:I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v28

    .line 364
    .local v28, flags:I
    move/from16 v0, v44

    move/from16 v1, v41

    if-ne v0, v1, :cond_2d

    shr-int/lit8 v5, v28, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    .line 365
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 381
    .end local v28           #flags:I
    .end local v44           #where:I
    :cond_27
    :goto_9
    move/from16 v0, v41

    move/from16 v1, v40

    if-eq v0, v1, :cond_28

    .line 382
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 384
    :cond_28
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v41

    move/from16 v3, v41

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 387
    move/from16 v0, v30

    int-to-char v0, v0

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v40

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 389
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v33

    .line 390
    .local v33, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v40

    .line 392
    move/from16 v0, v33

    move/from16 v1, v40

    if-ge v0, v1, :cond_29

    .line 393
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v33

    move/from16 v3, v40

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 397
    if-eqz v26, :cond_29

    .line 398
    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 399
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v33

    move/from16 v3, v40

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 404
    :cond_29
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 409
    and-int/lit8 v5, v35, 0x2

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_31

    const/16 v5, 0x20

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x9

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0xa

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x2c

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x2e

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x21

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x3f

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    const/16 v5, 0x22

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_2a

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_31

    :cond_2a
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v33

    if-eq v0, v1, :cond_31

    .line 417
    move/from16 v45, v33

    .local v45, x:I
    :goto_a
    if-lez v45, :cond_2b

    .line 418
    const/4 v5, 0x1

    sub-int v5, v45, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 419
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_2f

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 424
    .end local v8           #c:C
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v45

    move/from16 v3, v33

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v36

    .line 426
    .local v36, rep:Ljava/lang/String;
    if-eqz v36, :cond_31

    .line 427
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 429
    .local v37, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_b
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_30

    .line 430
    aget-object v5, v37, v17

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 429
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 326
    .end local v26           #dead:Z
    .end local v33           #oldStart:I
    .end local v36           #rep:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v45           #x:I
    .restart local v22       #ch:I
    .restart local v43       #start:I
    :cond_2c
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 367
    .end local v22           #ch:I
    .end local v43           #start:I
    .restart local v26       #dead:Z
    .restart local v28       #flags:I
    .restart local v44       #where:I
    :cond_2d
    shl-int/lit8 v28, v30, 0x10

    .line 368
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v30

    .line 370
    if-nez v41, :cond_2e

    .line 371
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v8, v28, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_9

    .line 374
    :cond_2e
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v41, v6

    or-int/lit8 v7, v28, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v41

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_9

    .line 417
    .end local v28           #flags:I
    .end local v44           #where:I
    .restart local v8       #c:C
    .restart local v33       #oldStart:I
    .restart local v45       #x:I
    :cond_2f
    add-int/lit8 v45, v45, -0x1

    goto :goto_a

    .line 432
    .end local v8           #c:C
    .restart local v36       #rep:Ljava/lang/String;
    .restart local v37       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_30
    sub-int v5, v33, v45

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v34, v0

    .line 433
    .local v34, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v33

    move-object/from16 v3, v34

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 435
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v45

    move/from16 v3, v33

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 437
    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v33

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 443
    .end local v34           #orig:[C
    .end local v36           #rep:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v45           #x:I
    :cond_31
    and-int/lit8 v5, v35, 0x4

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_35

    .line 444
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v40

    .line 445
    const/4 v5, 0x3

    sub-int v5, v40, v5

    if-ltz v5, :cond_35

    .line 446
    const/4 v5, 0x1

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_35

    const/4 v5, 0x2

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_35

    .line 448
    const/4 v5, 0x3

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 450
    .restart local v8       #c:C
    const/4 v5, 0x3

    sub-int v31, v40, v5

    .local v31, j:I
    :goto_c
    if-lez v31, :cond_33

    .line 451
    const/16 v5, 0x22

    if-eq v8, v5, :cond_32

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_33

    .line 453
    :cond_32
    const/4 v5, 0x1

    sub-int v5, v31, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 450
    add-int/lit8 v31, v31, -0x1

    goto :goto_c

    .line 459
    :cond_33
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 460
    :cond_34
    const/4 v5, 0x2

    sub-int v5, v40, v5

    const/4 v6, 0x1

    sub-int v6, v40, v6

    const-string v7, "."

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 466
    .end local v8           #c:C
    .end local v31           #j:I
    :cond_35
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 467
    .end local v26           #dead:Z
    .end local v33           #oldStart:I
    :cond_36
    const/16 v5, 0x43

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_39

    move/from16 v0, v41

    move/from16 v1, v40

    if-ne v0, v1, :cond_39

    .line 470
    const/16 v25, 0x1

    .line 482
    .local v25, consider:I
    sub-int v5, v41, v25

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v41

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 485
    .restart local v37       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_39

    .line 486
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v42

    .line 487
    .local v42, st:I
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v27

    .line 488
    .local v27, en:I
    new-instance v32, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v37, v5

    #getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$100(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 490
    .local v32, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 496
    move/from16 v0, v41

    move/from16 v1, v27

    if-lt v0, v1, :cond_38

    .line 497
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v27

    move/from16 v3, v27

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 499
    move-object/from16 v0, p2

    move/from16 v1, v42

    move/from16 v2, v27

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 501
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v27

    .line 502
    const/4 v5, 0x1

    sub-int v5, v27, v5

    if-ltz v5, :cond_37

    .line 503
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v27, v6

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v27

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 509
    :goto_d
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 515
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 507
    :cond_37
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d

    .line 511
    :cond_38
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 512
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 519
    .end local v25           #consider:I
    .end local v27           #en:I
    .end local v32           #old:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v42           #st:I
    :cond_39
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 319
    .restart local v22       #ch:I
    .restart local v43       #start:I
    :catch_0
    move-exception v5

    goto/16 :goto_7
.end method

.method public setQwertyLanguageForGreek(Ljava/lang/String;)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "en"

    .line 120
    const-string v0, "GT-S5660"

    const-string v1, "GT-I5510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    if-eqz p1, :cond_1

    const-string v0, "CYO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VGR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CYV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EUR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GRB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TGR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_3

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sput v3, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 126
    sput-boolean v2, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    sput v2, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 130
    sput-boolean v3, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    goto :goto_0

    .line 134
    :cond_3
    sget-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    .line 136
    sget-object v0, Landroid/text/method/QwertyKeyListener;->m_sLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    sput v3, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 138
    sput-boolean v2, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    goto :goto_0

    .line 141
    :cond_4
    sput v2, Landroid/text/method/QwertyKeyListener;->activeLanguage:I

    .line 142
    sput-boolean v3, Landroid/text/method/QwertyKeyListener;->symPressed:Z

    goto :goto_0
.end method

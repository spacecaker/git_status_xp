.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# instance fields
.field confirmPhPwd:Ljava/lang/String;

.field enterPhPwd:Ljava/lang/String;

.field firstSet:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmPhonePwdET:Landroid/widget/EditText;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnterPhonePwdET:Landroid/widget/EditText;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mIsEnterPhonePwdDlgOn:Z

.field private mIsNewPhonePwdDlgOn:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mNewPhonePwdET:Landroid/widget/EditText;

.field private mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

.field private mTrackerPreferences:Landroid/preference/Preference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field mshowDlg:Z

.field newPhPwd:Ljava/lang/String;

.field private shop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 121
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 135
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    .line 429
    return-void
.end method

.method private ValidateMTData()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "none"

    .line 808
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 810
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    .line 811
    .local v6, sender:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Not Mentioned"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    .line 830
    :goto_0
    return v7

    .line 814
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, rec1:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "none"

    invoke-virtual {v1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 816
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, rec2:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "none"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 818
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, rec3:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "none"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 820
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, rec4:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "none"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 822
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, rec5:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "none"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move v7, v9

    .line 824
    goto :goto_0

    .line 830
    .end local v2           #rec2:Ljava/lang/String;
    .end local v3           #rec3:Ljava/lang/String;
    .end local v4           #rec4:Ljava/lang/String;
    .end local v5           #rec5:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method private createPhonePasswordDialog(Z)Landroid/app/Dialog;
    .locals 13
    .parameter "mtcheckPref"

    .prologue
    const v12, 0x7f0b002f

    const v11, 0x7f0b002b

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v5, 0x8

    .line 844
    const v0, 0x7f03002c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 847
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPhonePassword()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, storedPhPwd:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 851
    .local v8, msg:Ljava/lang/String;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 852
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 853
    .local v7, hintTV:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->mIsNewPhonePwdDlgOn:Z

    .line 857
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    .line 858
    const v0, 0x7f0b0030

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    .line 860
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 863
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 864
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 866
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 867
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 889
    .end local v7           #hintTV:Landroid/widget/TextView;
    .end local v8           #msg:Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/android/internal/util/NVStore;

    invoke-direct {v4, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 891
    .local v4, filenv:Lcom/android/internal/util/NVStore;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v0, Lcom/android/settings/SecuritySettings$3;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v5, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 990
    .local v6, dialog:Landroid/app/Dialog;
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-nez v0, :cond_0

    .line 991
    const v0, 0x7f0804d2

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 993
    :cond_0
    new-instance v0, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1004
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1005
    return-object v6

    .line 869
    .end local v4           #filenv:Lcom/android/internal/util/NVStore;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 870
    const v0, 0x7f0b0075

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 871
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 872
    const v0, 0x7f0b0076

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 874
    const v0, 0x7f0b0030

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 875
    const v0, 0x7f0b0077

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 877
    const v0, 0x7f0b0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->mIsEnterPhonePwdDlgOn:Z

    .line 881
    const v0, 0x7f0b0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    .line 883
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 884
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 885
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 188
    :cond_0
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 198
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 219
    :goto_0
    const-string v0, "visiblepattern"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 227
    const v2, 0x7f0801ee

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 229
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 230
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.IccLockSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 233
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 234
    const v3, 0x7f0801ef

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 265
    const v2, 0x7f0800e3

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 266
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 269
    const-string v3, "show_password"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 270
    const v3, 0x7f080345

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 271
    const v3, 0x7f080346

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 272
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 277
    const v2, 0x7f080106

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 281
    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 282
    const v3, 0x7f080108

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 283
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 284
    const-class v4, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 285
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 290
    const v2, 0x7f080448

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 291
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 292
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v2, v0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 295
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 296
    const v2, 0x7f080462

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 298
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    const/4 v3, 0x1

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v2, v0, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 299
    return-object v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 203
    :sswitch_0
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 206
    :sswitch_1
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 210
    :sswitch_2
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 417
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private updateMTStatusSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 782
    const-string v1, "MT_Setting_Pref"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/SecuritySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MT_OPS_Signed_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 787
    .local v0, ops_signed_in:Z
    if-nez v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 790
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 805
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 800
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0804c4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 803
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0804c5

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 404
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 406
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v3, "network"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 412
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 414
    :cond_0
    return-void

    .line 410
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 837
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "tview"
    .parameter "storedPwd"
    .parameter "newPwd"
    .parameter "confirmPwd"
    .parameter "enterPhPwd"

    .prologue
    const v6, 0x7f0804d0

    const v5, 0x7f0804cf

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1011
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1012
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1013
    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1045
    :goto_0
    return v1

    .line 1016
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1021
    goto :goto_0

    .line 1023
    .end local v0           #msg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1024
    const v1, 0x7f0804cd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1026
    goto :goto_0

    .line 1030
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1031
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1033
    goto :goto_0

    .line 1034
    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .restart local v0       #msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1038
    goto :goto_0

    .line 1039
    .end local v0           #msg:Ljava/lang/String;
    :cond_6
    invoke-virtual {p5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1040
    const v1, 0x7f0804cc

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1041
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1042
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1045
    goto/16 :goto_0
.end method

.method public getPhonePassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1050
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 425
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 427
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string v10, "security_category"

    .line 149
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 155
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .local v7, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 167
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shopdemo"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    .line 169
    iget v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    if-ne v0, v8, :cond_1

    .line 170
    const-string v0, "security_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 171
    .local v6, p:Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    .end local v6           #p:Landroid/preference/PreferenceCategory;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/android/settings/SecuritySettings;->shop:I

    if-nez v0, :cond_0

    .line 176
    const-string v0, "security_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 177
    .restart local v6       #p:Landroid/preference/PreferenceCategory;
    if-nez v6, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 334
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    move v0, v3

    .line 396
    :goto_1
    return v0

    .line 337
    :cond_1
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 339
    :cond_2
    const-string v2, "visiblepattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 341
    :cond_3
    const-string v2, "unlock_tactile_feedback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    .line 346
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 356
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_3

    .line 359
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 360
    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 361
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    .line 363
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v0

    if-nez v0, :cond_c

    .line 364
    const-string v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 369
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 376
    goto/16 :goto_1

    .line 379
    :cond_c
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 380
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPhonePassword()Ljava/lang/String;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CALLFWD_SMS_RECEIVED_SER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v1, "nv_storephpwdstate"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "1"

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 389
    :cond_e
    const-string v2, "0"

    goto :goto_4
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 304
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 306
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 307
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 326
    return-void

    .line 314
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.class public Lcom/qualcomm/qti/ims/ImsSettings;
.super Landroid/preference/PreferenceActivity;
.source "ImsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/ims/ImsSettings$1;,
        Lcom/qualcomm/qti/ims/ImsSettings$2;
    }
.end annotation


# static fields
.field public static final BUTTON_SET_STATIC_IMAGE_KEY:Ljava/lang/String; = "ims_vt_call_static_image"

.field public static final BUTTON_VT_CALL_QUALITY_KEY:Ljava/lang/String; = "ims_vt_call_quality"

.field public static final KEY_TOGGLE_RTT:Ljava/lang/String; = "toggle_rtt"

.field private static final LOAD_IMAGE:I = 0x1

.field public static final RESULT_SELECT_IMAGE:I = 0x0

.field public static final SUB_ID_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

.field private mButtonCsRetry:Landroid/preference/SwitchPreference;

.field private mCallState:[I

.field private mDeflectNum:Landroid/preference/EditTextPreference;

.field private mImsConfig:Lcom/android/ims/ImsConfig;

.field private mPcPreference:Landroid/preference/Preference;

.field private mPerPreference:Landroid/preference/Preference;

.field mPhoneId:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRttModePreference:Landroid/preference/SwitchPreference;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mStaticImagePreference:Landroid/preference/Preference;

.field private mVideoCallQuality:Landroid/preference/ListPreference;

.field prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/ims/ImsSettings;)[I
    .locals 1
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    invoke-static {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->hasRequestFailed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/ims/ImsSettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->isCallStateIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;
    .param p1, "displayStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/ims/ImsSettings;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onPcPrefClicked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onPerPrefClicked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->selectImage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 68
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 69
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 70
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    .line 72
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 73
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 74
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mCallState:[I

    .line 75
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    .line 78
    iput-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    .line 340
    new-instance v0, Lcom/qualcomm/qti/ims/ImsSettings$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/ims/ImsSettings$1;-><init>(Lcom/qualcomm/qti/ims/ImsSettings;)V

    .line 339
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 480
    new-instance v0, Lcom/qualcomm/qti/ims/ImsSettings$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/ims/ImsSettings$2;-><init>(Lcom/qualcomm/qti/ims/ImsSettings;)V

    .line 479
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 49
    return-void
.end method

.method private displayCsRetryOpions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayCsRetryOptions PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 273
    iget v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCsRetryConfigEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 277
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiCallUtils;->isCsRetryEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    :cond_2
    return-void
.end method

.method private displayDeflectNumEditor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_1

    .line 593
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "displayDeflectNumEditor PreferenceScreen is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 599
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 602
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->isCallDeflectionOrTransferEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 604
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 607
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 606
    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 609
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 612
    .restart local v0    # "number":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayPcPerOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayPcPerOptions PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->isRtpStatisticsQueryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    :cond_1
    return-void
.end method

.method private displayRttOption()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 620
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayRttOption PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 628
    iget v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 630
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 631
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 632
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RTT: UI Option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    return-void
.end method

.method private displayStaticImageOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayStaticImageOptions PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 292
    iget v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallShowStaticImageUi(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 296
    :cond_2
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "displayStr"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method

.method private displayVideoQualityOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 225
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "displayVideoQualityOptions PreferenceScreen/VideoQuality is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getVideoQuality()I

    move-result v0

    .line 236
    .local v0, "videoQuality":I
    iget v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-static {v1, p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallShowVideoQuality(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    invoke-static {}, Lcom/qualcomm/qti/ims/CameraUtil;->getInstance()Lcom/qualcomm/qti/ims/CameraUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/ims/CameraUtil;->isHighVideoQualitySupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    .line 243
    const v2, 0x7f030002

    .line 242
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 244
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    .line 245
    const v2, 0x7f030003

    .line 244
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 247
    :cond_2
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->loadVideoCallQualityPrefs(I)V

    .line 249
    :cond_3
    return-void
.end method

.method private getVideoQuality()I
    .locals 5

    .prologue
    .line 542
    const/4 v1, -0x1

    .line 544
    .local v1, "videoQuality":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    .line 546
    const/16 v3, 0x37

    .line 545
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 551
    :cond_0
    :goto_0
    return v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Lcom/android/ims/ImsException;
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVideoQuality failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hasRequestFailed(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 569
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initRttOption()V
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "toggle_rtt"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    .line 254
    iget v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 256
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RTT: not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCallDeflectionOrTransferEnabled()Z
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-static {v0, p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallDeflectionSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallTransferEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCallStateIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mCallState:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mCallState:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 662
    return v2

    .line 660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isRtpStatisticsQueryEnabled()Z
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 497
    const/high16 v1, 0x7f050000

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private loadVideoCallQualityPrefs(I)V
    .locals 4
    .param p1, "vqValue"    # I

    .prologue
    .line 535
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadVideoCallQualityPrefs, vqValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/ims/ImsSettings;->videoQualityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "videoQuality":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    return-void
.end method

.method private onPcPrefClicked()V
    .locals 4

    .prologue
    .line 374
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPcPrefClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_0
    new-instance v1, Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;-><init>(Landroid/content/Context;)V

    .line 378
    iget v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 377
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/QtiImsExtManager;->getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 379
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPacketCount failed. Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPerPrefClicked()V
    .locals 4

    .prologue
    .line 386
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPerPrefClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    new-instance v1, Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;-><init>(Landroid/content/Context;)V

    .line 390
    iget v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 389
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/QtiImsExtManager;->getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 391
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPacketErrorCount failed. Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerPhoneStateListeners()V
    .locals 8

    .prologue
    .line 165
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/ims/ImsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 166
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 167
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 168
    :cond_0
    sget-object v5, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "TelephonyManager or SubscriptionManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 174
    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 175
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    .line 176
    sget-object v5, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener subInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 177
    const-string/jumbo v7, " for phone Id: "

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_2
    move v1, v0

    .line 182
    .local v1, "phoneId":I
    iget-object v5, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v6, Lcom/qualcomm/qti/ims/ImsSettings$3;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/qualcomm/qti/ims/ImsSettings$3;-><init>(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/Integer;I)V

    aput-object v6, v5, v0

    .line 206
    sget-object v5, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Register for call state change for phone Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 209
    .end local v1    # "phoneId":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private saveStaticImageUriStr(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 476
    const-string/jumbo v0, "ims_vt_call_static_image"

    .line 475
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    return-void
.end method

.method private selectImage()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 400
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "selectImage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    .line 403
    const-string/jumbo v3, "image/jpeg"

    aput-object v3, v0, v6

    .line 404
    const-string/jumbo v3, "image/jpg"

    aput-object v3, v0, v5

    .line 405
    const-string/jumbo v3, "image/png"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 408
    .local v0, "ACCEPT_MIME_TYPES":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .line 409
    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    .line 410
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 408
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    const-string/jumbo v3, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 419
    .local v1, "cName":Landroid/content/ComponentName;
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectImage cName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p0, v2, v6}, Lcom/qualcomm/qti/ims/ImsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "UE cannot handle this intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCsRetry(Z)V
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 329
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 331
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 332
    const-string/jumbo v2, "qti.settings.cs_retry"

    .line 330
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    return-void

    .line 329
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private setRttMode(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 638
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTT: setRttMode value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->setRttMode(ZLandroid/content/Context;)V

    .line 644
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    if-eqz v1, :cond_0

    .line 649
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    .line 650
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 649
    :goto_0
    const/16 v3, 0x42

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    :goto_1
    return-void

    .line 650
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Lcom/android/ims/ImsException;
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTT: setRttMode failed. Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private setVideoQuality(I)Z
    .locals 5
    .param p1, "quality"    # I

    .prologue
    .line 555
    const/4 v1, 0x1

    .line 557
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    const/16 v3, 0x37

    invoke-virtual {v2, v3, p1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 564
    :cond_0
    :goto_0
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoQuality, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v1}, Lcom/qualcomm/qti/ims/ImsSettings;->hasRequestFailed(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Lcom/android/ims/ImsException;
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoQuality failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterPhoneStateListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 214
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unRegister for call state change for phone Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v2, v0

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method private videoQualityToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 573
    packed-switch p1, :pswitch_data_0

    .line 582
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :pswitch_0
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 577
    :pswitch_1
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 579
    :pswitch_2
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 429
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 430
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResult requestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez p1, :cond_2

    .line 432
    if-nez p3, :cond_0

    .line 433
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "possibly user didn\'t select any image"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_0
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 438
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 439
    iget v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "call state is not idle so ignore user selected image"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 442
    const v5, 0x7f060015

    .line 441
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 444
    return-void

    .line 447
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 448
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 451
    .local v1, "imageUriStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, p0}, Lcom/qualcomm/qti/ims/ImageUtils;->getFilePathFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    .local v1, "imageUriStr":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " imageUriStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->saveStaticImageUriStr(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 467
    const v5, 0x7f060016

    .line 466
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 471
    .end local v1    # "imageUriStr":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 452
    .local v1, "imageUriStr":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Lorg/codeaurora/ims/QtiImsUnsupportedImageFormatException;
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResult ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 455
    const v5, 0x7f060014

    .line 454
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 116
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start ImsSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/ims/ImsSettings;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 122
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 123
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PreferenceScreen is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "phoneId"

    .line 128
    const/4 v4, -0x1

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    .line 129
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ImsSetting mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 132
    const-string/jumbo v3, "ims_vt_call_quality"

    .line 131
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    .line 134
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 135
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 137
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 138
    const-string/jumbo v3, "ims_vt_call_static_image"

    .line 137
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    .line 140
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 141
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 143
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->initRttOption()V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 147
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 154
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mCallState:[I

    .line 156
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 157
    const v3, 0x7f06000d

    .line 156
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 158
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 161
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/android/ims/ImsException;
    iput-object v5, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Lcom/android/ims/ImsConfig;

    .line 150
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ImsService is not running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 105
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 108
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 109
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mStaticImagePreference:Landroid/preference/Preference;

    .line 110
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 111
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onBackPressed()V

    .line 323
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 98
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->unRegisterPhoneStateListeners()V

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 503
    if-nez p2, :cond_1

    .line 504
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPreferenceChange invalid value received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 506
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 507
    .local v1, "quality":I
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->setVideoQuality(I)Z

    move-result v2

    .line 508
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 509
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->loadVideoCallQualityPrefs(I)V

    .line 511
    :cond_2
    return v2

    .line 513
    .end local v1    # "quality":I
    .end local v2    # "result":Z
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 514
    if-nez p2, :cond_4

    .line 515
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPreferenceChange Deflect number invalid value received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayDeflectNumEditor()V

    goto :goto_0

    .line 521
    :cond_5
    iget-object v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 522
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 523
    .local v0, "csRetryPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 524
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->setCsRetry(Z)V

    goto :goto_0

    .line 525
    .end local v0    # "csRetryPref":Landroid/preference/SwitchPreference;
    :cond_6
    iget-object v4, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mRttModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 526
    check-cast v3, Landroid/preference/SwitchPreference;

    .line 527
    .local v3, "rttPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 528
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->setRttMode(Z)V

    .line 529
    sget-object v4, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RTT: onPreferenceChange mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 83
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->registerPhoneStateListeners()V

    .line 86
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayVideoQualityOptions()V

    .line 87
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayPcPerOptions()V

    .line 88
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayDeflectNumEditor()V

    .line 89
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayCsRetryOpions()V

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayStaticImageOptions()V

    .line 92
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayRttOption()V

    .line 93
    return-void
.end method

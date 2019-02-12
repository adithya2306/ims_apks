.class Lcom/qualcomm/qti/ims/ImsSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "ImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/ims/ImsSettings;->registerPhoneStateListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/ims/ImsSettings;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/Integer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/ims/ImsSettings;
    .param p2, "$anonymous0"    # Ljava/lang/Integer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    iput p3, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->val$phoneId:I

    .line 182
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneStateListener onCallStateChanged: state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    const-string/jumbo v4, " SubId: "

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    iget-object v4, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->mSubId:Ljava/lang/Integer;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-get1(Lcom/qualcomm/qti/ims/ImsSettings;)[I

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->val$phoneId:I

    aput p1, v2, v3

    .line 194
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 195
    const-string/jumbo v3, "ims_vt_call_static_image"

    .line 194
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 196
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap1(Lcom/qualcomm/qti/ims/ImsSettings;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 200
    const-string/jumbo v3, "ims_vt_call_quality"

    .line 199
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 201
    .local v1, "vtQualityPref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$3;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap1(Lcom/qualcomm/qti/ims/ImsSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    :cond_1
    return-void
.end method

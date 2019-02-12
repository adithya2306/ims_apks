.class Lcom/qualcomm/qti/ims/ImsSettings$1;
.super Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
.source "ImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/ims/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/ims/ImsSettings;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    .line 340
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGetPacketCount(IIJ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "status"    # I
    .param p3, "packetCount"    # J

    .prologue
    .line 344
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-get2(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 346
    const v3, 0x7f060009

    .line 345
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "sPc":Ljava/lang/String;
    invoke-static {p2}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketCount: get failed. errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap2(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V

    .line 355
    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketCount: packetCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 352
    .local v0, "pc":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packetCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onGetPacketErrorCount(IIJ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "status"    # I
    .param p3, "packetErrorCount"    # J

    .prologue
    .line 359
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-get3(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 361
    const v3, 0x7f06000a

    .line 360
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "sPec":Ljava/lang/String;
    invoke-static {p2}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketErrorCount: get failed. errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap2(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V

    .line 370
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketErrorCount: packetErrorCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    .line 367
    .local v0, "pec":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packetErrorCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.class Lcom/qualcomm/qti/ims/ImsSettings$2;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    iput-object p1, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 483
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-get2(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap3(Lcom/qualcomm/qti/ims/ImsSettings;)V

    .line 491
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-get3(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap4(Lcom/qualcomm/qti/ims/ImsSettings;)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-get4(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings$2;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v0}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap5(Lcom/qualcomm/qti/ims/ImsSettings;)V

    goto :goto_0
.end method

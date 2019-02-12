.class final synthetic Lorg/codeaurora/ims/-$Lambda$wtkba8Bd1_tkkSOmbS18RK4QCQY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/-$Lambda$wtkba8Bd1_tkkSOmbS18RK4QCQY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExtManager;->lambda$-org_codeaurora_ims_QtiImsExtManager_10473()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$Lambda$wtkba8Bd1_tkkSOmbS18RK4QCQY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/-$Lambda$wtkba8Bd1_tkkSOmbS18RK4QCQY;->$m$0()V

    return-void
.end method

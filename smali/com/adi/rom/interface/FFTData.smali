.class public Lcom/adi/rom/interface/FFTData;
.super Ljava/lang/Object;
.source "FFTData.java"


# instance fields
.field public bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/adi/rom/interface/FFTData;->bytes:[B

    .line 15
    return-void
.end method

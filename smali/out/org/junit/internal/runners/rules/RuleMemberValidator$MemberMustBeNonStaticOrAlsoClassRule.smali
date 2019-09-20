.class final Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"

# interfaces
.implements Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemberMustBeNonStaticOrAlsoClassRule"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .registers 2

    .line 166
    invoke-direct {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    .line 169
    const-class v1, Lorg/junit/ClassRule;

    invoke-virtual {p1, v1}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 176
    :goto_f
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-nez v0, :cond_19

    if-nez v1, :cond_2c

    .line 178
    :cond_19
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "must not be static."

    goto :goto_24

    :cond_22
    const-string v0, "must not be static or it must be annotated with @ClassRule."

    .line 183
    :goto_24
    new-instance v1, Lorg/junit/internal/runners/rules/ValidationError;

    invoke-direct {v1, p1, p2, v0}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

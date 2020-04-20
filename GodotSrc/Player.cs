using Godot;
using System;

public class Player : KinematicBody2D
{
    public const float ACCELERATION = 512;
    public const float MAX_SPEED = 60;
    public const float FRICTION = 0.25F;
    public const float GRAVITY = 200;
    public const float JUMP_FORCE = 128;

    private Vector2 motion = Vector2.Zero;

    public AnimationPlayer animationPlayer;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        animationPlayer = GetNode<AnimationPlayer>("AnimationPlayer");
    }

    public override void _PhysicsProcess(float delta)
    {
        motion.y += GRAVITY * delta;

        if(motion.x <= 0)
            animationPlayer.Play("Idle");
        else if(motion.x > 0)
            animationPlayer.Play("Walk");
        else if(motion.y > 0)
            animationPlayer.Play("Fall");

        motion.x = MAX_SPEED;

        motion = MoveAndSlide(motion, Vector2.Up);
        
    }
}

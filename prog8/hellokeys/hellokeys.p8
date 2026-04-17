/*
** Simple "Hello World" example using Text IO and keyboard input (just scanning
** cursor keys, nothing too special)
*/
%import textio
%zeropage basicsafe

main 
{
    sub start() 
    {
        ; fill the whole screen with some char, just for fun
        txt.fill_screen(32, 1)

        ; hello text
        txt.print("hello world ...")
        txt.nl()
        txt.print("press cursor keys (row / col)")
        txt.nl()

        ; just to make it smaller
        kbdstuff()
    }

    sub kbdstuff()
    {
        ubyte posx = 0
        ubyte posy = 0

char_loop:
        ubyte char
        void, char = cbm.GETIN()
        if char==0
            goto char_loop

        when char 
        {
            $91 -> {
                txt.print("cursor up")
                if posy != 0 
                {
                    posy--
                }
                print_pos()
            }
            $11 -> {
                txt.print("cursor down")
                if posy<10 
                {
                    posy++
                }
                print_pos()
            }
            $9d -> {
                txt.print("cursor left")
                if posx != 0 
                {
                    posx--
                }
                print_pos()
            }
            $1d -> {
                txt.print("cursor right")
                if posx<39 
                {
                    posx++
                }
                print_pos()
            }
        }
        goto char_loop

        sub print_pos()
        {
            txt.spc()
            txt.print_ub(char)
            txt.spc()
            txt.print_ubhex(char,true)
            txt.print(" => ")
            txt.print_ub(posy)
            txt.print("/")
            txt.print_ub(posx)
            txt.nl()
        }
    }
}

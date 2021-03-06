########################################################################
#
# tolower is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
########################################################################
#
#  Project      :  File Preprocessor - tolower module
#  Filename     :  $RCSfile: tolower.pm,v $
#  Author       :  $Author: darren $
#  Maintainer   :  Darren Miller: darren@cabaret.demon.co.uk
#  File version :  $Revision: 1.2 $
#  Last changed :  $Date: 2001/10/07 15:13:49 $
#  Description  :  This module converts all letters to upper case.
#  Licence      :  GNU copyleft
#
########################################################################
# THIS IS A FILEPP MODULE, YOU NEED FILEPP TO USE IT!!!
# usage: filepp -m tolower.pm <files>
########################################################################
package ToLower;

use strict;

# version number of module
my $VERSION = '1.0.0';

sub ToLower
{
    my $string = shift;
    $string =~ s/([A-Z])/\L$1\E/g;
    return $string;
}
Filepp::AddProcessor("ToLower::ToLower");

return 1;
########################################################################
# End of file
########################################################################

